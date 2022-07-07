import 'package:dio/dio.dart';
import 'package:flutter_basic_template/core/network_client.dart';

import '../models/post.dart';

class PostClient extends NetworkClient{

  Future getPosts() async {
    // Post list
    List<Post> posts = [];

    // Response from API call to get posts list from JSONPlaceholder API (https://jsonplaceholder.typicode.com/posts) with Dio
    Response response = await dio.get('$baseUrl/posts');

    // Iterate over the response and create a Post object for each item
    posts = response.data.map<Post>((post) => Post.fromJson(post)).toList();

    return posts;
  }
}