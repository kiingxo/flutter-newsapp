import 'package:flutter/material.dart';

class Explorebody extends StatelessWidget {
  final String assetname1;
  final String assetname2;
  final String assetdescription1;
  final String assetdescription2;

  const Explorebody({
    Key? key,
    required this.assetname1,
    required this.assetname2,
    required this.assetdescription1,
    required this.assetdescription2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: w * 0.4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage(assetname1),
              ),
              Text(
                assetdescription1,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: w * 0.4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage(assetname2),
              ),
              Text(
                assetdescription2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}
