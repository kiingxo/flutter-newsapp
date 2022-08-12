import 'package:flutter/material.dart';
import 'package:newsappdebugged/components/styles/color_constant.dart';

class Searchbar extends StatelessWidget {
  final String? hinttext;
  final Color cursorcolor;
  final Function ontab;
  const Searchbar({
    Key? key,
    required this.hinttext,
    required this.ontab,
    required this.cursorcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.15,
      child: TextFormField(
        //textformfield for the explore page
        showCursor: true,
        cursorColor: cursorcolor,
        onTap: null,
        //null saftey is on

        autocorrect: false,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: "Search for your Interests",
          suffixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
