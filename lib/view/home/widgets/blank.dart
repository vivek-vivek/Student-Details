import 'package:details_pro/controller/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlankBackground extends StatelessWidget {
  const BlankBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.withOpacity(0.2),
      ),
      height: 75,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: rTheme,
          child: Text(
            'XX',
            style: TextStyle(color: Colors.grey.withOpacity(0.3)),
          ),
        ),
        title: Text(
          'Student Name',
          style: GoogleFonts.comingSoon(
            textStyle: const TextStyle(
              color: Color.fromARGB(94, 0, 0, 0),
            ),
          ),
        ),
        subtitle: Text(
          'XX',
          style: GoogleFonts.comingSoon(
            textStyle: const TextStyle(
              color: Color.fromARGB(98, 0, 0, 0),
            ),
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            color: const Color.fromARGB(32, 24, 23, 23),
            icon: const Icon(Icons.delete)),
      ),
    );
  }
}
