import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostList extends StatelessWidget {
  PostList({Key? key, required this.snapshot}) : super(key: key);
  var snapshot;

  @override
  Widget build(BuildContext context) {

    // Connection state of the future builder check
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(),
      );

      // Snapshot error check
    } else if (snapshot.hasError) {
      return const Center(
        child: Text('Error : snapshot.error', style: TextStyle(color: white)),
      );

      // Snapshot data check
    } else if (snapshot.hasData) {
      var data = snapshot!.data;

      // Post List
      return ListView.builder(
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index].title!,style: TextStyle(color: white,fontSize: 17.sp,fontWeight: FontWeight.bold,),textAlign: TextAlign.start),
              subtitle: Text(data[index].body!,style: TextStyle(color: white,fontSize: 13.sp),textAlign: TextAlign.start,),
            );
          });
    } else {
      return Text('State : ${snapshot.connectionState}');
    }
  }
}
