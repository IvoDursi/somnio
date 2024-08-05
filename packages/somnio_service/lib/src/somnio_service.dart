import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:somnio_service/somnio_service.dart';

/// Somnio service
class SomnioService {
  const SomnioService();

  Future<Either<String, List<PostDTO>>> getPosts() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body) as List<dynamic>;

      List<PostDTO> fetchedPosts = [];

      try {
        fetchedPosts = responseJson
            .map((e) => PostDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      } catch (e) {
        return Left('Serialization error: $e');
      }

      return Right(
        fetchedPosts,
      );
    }

    return Left(
        'An error occurred while fetching the posts - statusCode: ${response.statusCode}');
  }
}
