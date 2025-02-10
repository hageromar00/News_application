import 'package:flutter/material.dart';
import 'package:news_applications/model/newsverti.dart';
import 'package:news_applications/widget/verti/item.dart';

class ListItemVerti extends StatelessWidget {
  ListItemVerti({super.key,required this.moodel});
  List<NewsVerticalModel> moodel = [];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: moodel.length,
            (context, index) {
      return newsVertical(Models: moodel[index]);
    }));
    // return ListView.builder(
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return newsVertical();
    //     });
  }
}
