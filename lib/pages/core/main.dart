import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:newsappdebugged/pages/core/sigin.dart';
import 'package:newsappdebugged/pages/core/wrapper.dart';
import 'package:newsappdebugged/pages/eplore/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'news ui',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const Loginn(),
    );
  }
}
