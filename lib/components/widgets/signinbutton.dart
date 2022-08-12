import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final double buttonheight;
  final Color textcolor;
  // final String assetname;
  // final String assetname2;
  final double buttonwidth;
  final String buttontext;
  final Color buttoncolor;

  final Function()? whathappenswhenpressed;

  const Buttonwidget({
    Key? key,
    required this.buttoncolor,
    // required this.assetname2,
    required this.textcolor,
    // required this.assetname,
    required this.buttonheight,
    required this.buttonwidth,
    required this.buttontext,
    required this.whathappenswhenpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child: ElevatedButton(
        onPressed: whathappenswhenpressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttoncolor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(
            //   image: AssetImage(assetname),
            // ),
            Text(
              buttontext,
              style: TextStyle(
                  color: textcolor, fontSize: 15, fontWeight: FontWeight.bold),
            ),
            // Opacity(
            //   opacity: 0,
            //   child: Image(
            //     image: AssetImage(assetname2),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
