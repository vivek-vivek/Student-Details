import 'package:flutter/material.dart';
import '../../../controller/constants.dart';

void commonSnackBar(message, context) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(color: rBlack),
    ),
    backgroundColor: (const Color.fromARGB(255, 49, 90, 212).withOpacity(0.8)),
  );
  // ignore: use_build_context_synchronously
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
