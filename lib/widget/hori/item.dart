import 'package:flutter/material.dart';
import 'package:news_applications/model/generalNews.dart';
import 'package:news_applications/widget/future.dart';
import 'package:news_applications/widget/hori/puch.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.model});
  final GeneralNews model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const PuchCategory();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(model.image!),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              model.text!,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
