import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:somnio_repository/model/post.dart';
import 'package:somnio_repository/somnio_repository.dart';
import 'package:somnio_service/somnio_service.dart';

class MockSomnioService extends Mock implements SomnioService {}

void main() {
  group('SomnioRepository', () {
    late SomnioRepository repository;
    late MockSomnioService mockSomnioService;

    setUp(() {
      mockSomnioService = MockSomnioService();
      repository = SomnioRepository(somnioService: mockSomnioService);
    });

    test(
        'should return a list of posts when SomnioService returns a list of PostDTO',
        () async {
      const postDto = PostDTO(
        id: 1,
        title: 'Test Post',
        body: 'Test Body',
        userId: 1,
      );
      when(() => mockSomnioService.getPosts()).thenAnswer(
        (_) async => const Right([postDto]),
      );

      final result = await repository.getPosts();

      final posts = (result as Right<String, List<Post>>).value;

      expect(
        posts,
        [const Post(id: 1, title: 'Test Post', body: 'Test Body', userId: 1)],
      );
    });

    test('should return Left(null) when SomnioService returns an error',
        () async {
      when(() => mockSomnioService.getPosts()).thenAnswer(
        (_) async => const Left('null'),
      );

      final result = await repository.getPosts();

      expect(result, const Left<String, List<Post>>('null'));
    });
  });
}
