import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewsIcon extends StatefulWidget {
  const NewsIcon({Key? key}) : super(key: key);

  @override
  State<NewsIcon> createState() => _NewsIconState();
}

class _NewsIconState extends State<NewsIcon> {
  final List<String> _asset = [
    "assets/images/cnn.png",
    "assets/images/bbc.png",
    "assets/images/msn.png",
    "assets/images/cnbc.png",
    "assets/images/fox.png",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _asset.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            HapticFeedback.lightImpact();
          },
          child: Material(
            elevation: 5,
            shape: const CircleBorder(),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  _asset[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 25,
        );
      },
    );
  }
}
