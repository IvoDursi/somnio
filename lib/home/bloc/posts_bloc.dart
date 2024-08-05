import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnio/home/bloc/bloc.dart';
import 'package:somnio_repository/somnio_repository.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc({
    required this.somnioRepository,
  }) : super(const PostsState.initial()) {
    on<PostsFetchEvent>(_onFetch);
  }

  final SomnioRepository somnioRepository;

  Future<void> _onFetch(
    PostsFetchEvent event,
    Emitter<PostsState> emit,
  ) async {
    emit(const PostsState.loading());

    final postsEither = await somnioRepository.getPosts();

    if (postsEither.isLeft()) {
      final failure = (postsEither as Left<String, List<Post>>).value;
      emit(PostsState.failed(error: failure));
      return;
    }

    final posts = (postsEither as Right<String, List<Post>>).value;

    emit(PostsState.loaded(posts: posts));
  }
}
