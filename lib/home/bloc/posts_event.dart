import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_event.freezed.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.fetch() = PostsFetchEvent;
}
