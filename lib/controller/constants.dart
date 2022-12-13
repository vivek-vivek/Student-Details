import 'package:flutter/material.dart';

const kSizedBox5 = SizedBox(height: 5.0);
const kSizedBox10 = SizedBox(height: 10);
const kSizedBox15 = SizedBox(height: 15);
const kSizedBox20 = SizedBox(height: 20);
const kSizedBox25 = SizedBox(height: 25);

// colors
const rBlack        = Colors.black;
const rWhite        = Colors.white;
const rTheme        = Color.fromARGB(255, 25, 22, 65);
final rTileColor    = const Color.fromARGB(255, 25, 22, 65).withOpacity(0.4);
const rSankBarColor = Color.fromARGB(212, 32, 28, 82);

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
