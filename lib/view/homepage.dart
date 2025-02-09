import 'package:flutter/material.dart';
import 'package:news_applications/widget/ListItem.dart';
import 'package:news_applications/widget/item.dart';

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
      body: ListItem(),
    );
  }
}

