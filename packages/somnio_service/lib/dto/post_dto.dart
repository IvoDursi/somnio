import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
class PostDTO with _$PostDTO {
  const factory PostDTO({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostDTO;

  factory PostDTO.fromJson(Map<String, dynamic> json) =>
      _$PostDTOFromJson(json);
}
