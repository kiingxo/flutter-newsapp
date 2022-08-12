import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllNews extends StatelessWidget {
  final String imageurl, title, desc;
  const AllNews(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageurl),
          Text(title),
          Text(desc),
        ],
      ),
    );
  }
}
