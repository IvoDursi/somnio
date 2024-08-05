import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:somnio_repository/model/post.dart';

part 'posts_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = PostsInitialState;

  const factory PostsState.loaded({
    required List<Post> posts,
  }) = PostsLoadedState;

  const factory PostsState.loading() = PostsLoadingState;

  const factory PostsState.failed({
    required String error,
  }) = PostsFailedState;
}
