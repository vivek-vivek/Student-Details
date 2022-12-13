import 'dart:developer';

import 'package:details_pro/controller/constants.dart';
import 'package:details_pro/controller/student_db_controler.dart';
import 'package:details_pro/view/edit/student_add_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StudentTile extends StatelessWidget {
  final int index;
  StudentDb studentDb;
  final String id;
  final String nameText;
  final String ageText;
  StudentTile({
    Key? key,
    required this.index,
    required this.studentDb,
    required this.nameText,
    required this.ageText,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: rTileColor,
      ),
      height: 75,
      child: ListTile(
        onLongPress: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EditScreen(
                index: index,
                id: id,
              ),
            ),
          );
        },
        leading: CircleAvatar(
          backgroundColor: rTheme,
          child: Text((index + 1).toString()),
        ),
        title: Text(
          nameText,
          style: GoogleFonts.comingSoon(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        subtitle: Text(ageText),
        trailing: IconButton(
            onPressed: () {
              log(index.toString());
              Provider.of<StudentDb>(context, listen: false).deleteStudent(id);
            },
            icon: const Icon(Icons.delete)),
      ),
    );
  }
}
