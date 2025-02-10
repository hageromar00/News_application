import 'package:flutter/material.dart';
import 'package:news_applications/model/newsverti.dart';

class newsVertical extends StatelessWidget {
  newsVertical({super.key, required this.Models});
  final NewsVerticalModel Models;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: Models.image != null
                        ? NetworkImage(Models.image!) as ImageProvider<Object>
                        : const AssetImage('assets/technology.jpeg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            Models.title!,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            Models.subTitle ?? "hello world",
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
