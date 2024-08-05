import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:somnio_service/somnio_service.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Post;

  factory Post.fromPostDTO(PostDTO dto) => Post(
        userId: dto.userId,
        id: dto.id,
        title: dto.title,
        body: dto.body,
      );
}
