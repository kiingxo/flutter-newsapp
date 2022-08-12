import 'package:flutter/material.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';

class CustomTabbar extends StatelessWidget {
  final TabController? controller;

  final Function(int) whathappensontap;
  final String? tabviewlabel1;
  final String? tabviewlabel2;
  final String? tabviewlabel3;
  final String? tabviewlabel4;
  final String? tabviewlabel5;
  const CustomTabbar({
    Key? key,
    this.controller,
    required this.whathappensontap,
    this.tabviewlabel1,
    this.tabviewlabel2,
    this.tabviewlabel3,
    this.tabviewlabel4,
    this.tabviewlabel5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return TabBar(
      indicatorColor: primaryorange,
      indicatorPadding: const EdgeInsets.only(left: 20, right: 20),
      labelColor: Colors.black,
      unselectedLabelColor: unselectedGrey,
      controller: controller,
      isScrollable: true,
      onTap: whathappensontap,
      tabs: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(tabviewlabel1!),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(tabviewlabel2!),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(tabviewlabel3!),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(tabviewlabel4!),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(tabviewlabel5!),
        ),
      ],
    );
  }
}
