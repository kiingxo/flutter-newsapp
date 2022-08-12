import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Exploreitems extends StatelessWidget {
  final String title;
  final Color color;
  const Exploreitems({required this.title, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text(title),
    );
  }
}
