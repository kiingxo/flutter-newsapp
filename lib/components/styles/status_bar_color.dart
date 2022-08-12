import 'package:flutter/services.dart';

// sets your status bar color on ios
void setStatusBarColor({required BarColor color}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarBrightness:
            color == BarColor.white ? Brightness.dark : Brightness.light),
  );
}

enum BarColor { white, black }
