import 'package:flutter/material.dart';
import 'package:news_applications/model/newsverti.dart';
import 'package:news_applications/services/newsService.dart';
import 'package:news_applications/widget/verti/listItem.dart';

class FutureListNews extends StatefulWidget {
  const FutureListNews({super.key});

  @override
  State<FutureListNews> createState() => _FutureListNewsState();
}

class _FutureListNewsState extends State<FutureListNews> {
  var Future;
  @override
  void initState() {
    super.initState();
    Future=Newsservice().getnews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsVerticalModel>>(
        future: Future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListItemVerti(moodel: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops error'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
