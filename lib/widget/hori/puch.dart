import 'package:flutter/material.dart';
import 'package:news_applications/widget/future.dart';

class PuchCategory extends StatelessWidget {
  const PuchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  CustomScrollView(
        slivers: [FutureListNews()],
      ),
    );
  }
}
