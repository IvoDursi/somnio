import 'package:dartz/dartz.dart';
import 'package:somnio_repository/model/post.dart';
import 'package:somnio_service/somnio_service.dart';

/// Somnio repository

class SomnioRepository {
  const SomnioRepository({
    required this.somnioService,
  });

  final SomnioService somnioService;

  Future<Either<String, List<Post>>> getPosts() async {
    final postsEither = await somnioService.getPosts();

    if (postsEither.isLeft()) {
      final failure = (postsEither as Left<String, List<PostDTO>>).value;
      return Left(failure);
    }

    final postsDto = (postsEither as Right<String, List<PostDTO>>).value;

    final posts = postsDto
        .map(
          Post.fromPostDTO,
        )
        .toList();

    return Right(posts);
  }
}
