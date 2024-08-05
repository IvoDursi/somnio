import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:somnio/home/bloc/bloc.dart';
import 'package:somnio_repository/somnio_repository.dart';

class MockSomnioRepository extends Mock implements SomnioRepository {}

void main() {
  group('PostsBloc', () {
    late PostsBloc postsBloc;

    final mockSomnioRepository = MockSomnioRepository();

    setUp(() {
      postsBloc = PostsBloc(somnioRepository: mockSomnioRepository);
    });

    tearDown(() {
      postsBloc.close();
    });

    test('initial state is PostsState.initial', () {
      expect(postsBloc.state, const PostsState.initial());
    });
    blocTest<PostsBloc, PostsState>(
      'emits [loading, loaded] when posts are fetched successfully',
      build: () {
        when(mockSomnioRepository.getPosts).thenAnswer(
          (_) async => right([
            const Post(
              id: 1,
              title: 'Test Post',
              body: 'Test Body',
              userId: 1,
            )
          ]),
        );
        return postsBloc;
      },
      act: (bloc) => bloc.add(const PostsEvent.fetch()),
      expect: () => [
        const PostsState.loading(),
        const PostsState.loaded(
          posts: [
            Post(id: 1, title: 'Test Post', body: 'Test Body', userId: 1)
          ],
        ),
      ],
    );

    blocTest<PostsBloc, PostsState>(
      'emits [loading, failed] when fetching posts fails',
      build: () {
        when<Future<Either<String, List<Post>>>>(mockSomnioRepository.getPosts)
            .thenAnswer((_) async => left('Fail'));
        return postsBloc;
      },
      act: (bloc) => bloc.add(const PostsEvent.fetch()),
      expect: () => [
        const PostsState.loading(),
        const PostsState.failed(error: 'Fail'),
      ],
    );
  });
}
