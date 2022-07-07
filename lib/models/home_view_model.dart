import 'package:flutter_basic_template/core/post_client.dart';
import 'package:flutter_basic_template/models/post.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store {

  // Construckter for the view model
  _HomeViewModel(PostClient client) : _client = client;

  // Post Client
 late final PostClient _client;

 // Posts List
  List<Post> posts = [];

 // Fetch Post
 @action
  Future<void> fetchPost() async {
   posts = await _client.getPosts();
 }
}