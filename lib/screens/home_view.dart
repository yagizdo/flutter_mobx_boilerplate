import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_colors.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';
import 'package:flutter_basic_template/core/post_client.dart';
import 'package:flutter_basic_template/localizations/locale_keys.g.dart';
import 'package:flutter_basic_template/models/home_view_model.dart';
import 'package:flutter_basic_template/widgets/post_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../models/post.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // ViewModel with locator
  final HomeViewModel _homeViewModel = GetIt.I<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_home_title.tr()),
      ),
      body: Column(
        children: [
          Text('List', style: TextStyle(color: white, fontSize: ScreenUtil().setSp(20))),

          // Post List
          Expanded(
            child: FutureBuilder<List<Post>>(
            future: _homeViewModel.fetchPost(),
            builder: (
                BuildContext context,
                AsyncSnapshot<List<Post>> snapshot,
            ) {
              return PostList(snapshot: snapshot);
            }
          ),
          ),
        ],
      )
    );
  }
}
