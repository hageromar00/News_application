import 'package:flutter/material.dart';
import 'package:news_applications/model/generalNews.dart';
import 'package:news_applications/widget/item.dart';

class ListItem extends StatelessWidget {
  ListItem({super.key});
  List<GeneralNews> general = [
    GeneralNews(text: 'general', image: 'assets/science.avif'),
    GeneralNews(text: 'health', image: 'assets/health.avif'),
    GeneralNews(text: 'science', image: 'assets/science.avif'),
    GeneralNews(text: 'sport', image: 'assets/health.avif'),
    GeneralNews(text: 'technology', image: 'assets/technology.jpeg'),
    GeneralNews(text: 'science', image: 'assets/technology.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: general.length,
          itemBuilder: (context, index) {
            return Item(
              model: general[index],
            );
          }),
    );
  }
}
