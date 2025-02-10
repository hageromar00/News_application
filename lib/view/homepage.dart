import 'package:flutter/material.dart';
import 'package:news_applications/widget/future.dart';
import 'package:news_applications/widget/hori/ListItem.dart';
import 'package:news_applications/widget/verti/item.dart';
import 'package:news_applications/widget/verti/listItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Clouds",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
            ),
            Text(
              " News",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListItem(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          FutureListNews(),
        //  ListItemVerti()
          // SliverToBoxAdapter(
          //   child: ListItemVerti(),
          // )
        ],
      ),
    );
  }
}

