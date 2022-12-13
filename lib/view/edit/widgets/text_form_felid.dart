import 'package:flutter/material.dart';

class EditFormFelid extends StatelessWidget {
  final TextEditingController controllerValue;
  IconData newIcon;
  final String hintText;
  EditFormFelid({
    Key? key,
    required this.controllerValue,
    required this.hintText,
    required this.newIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerValue,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(
          newIcon,
          color: Colors.white70,
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: const Color.fromARGB(255, 25, 22, 65),
        contentPadding: const EdgeInsets.all(26),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30).copyWith(),
        ),
      ),
    );
  }
}
