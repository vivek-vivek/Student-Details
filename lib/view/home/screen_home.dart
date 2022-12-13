import 'package:details_pro/view/create_new/student_add_screen.dart';
import 'package:details_pro/view/home/widgets/blank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../controller/student_db_controler.dart';
import '../../controller/constants.dart';
import 'widgets/curve_shape.dart';
import 'widgets/details_list_tile_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                painter: HeaderCurvedContainer(),
                child: const SizedBox(
                  width: 400,
                  height: 100,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 100),
                  child: Text(
                    "STUDENTS",
                    style: GoogleFonts.comingSoon(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                child: CupertinoSearchTextField(),
              ),
            ],
          ),
          method2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: rTheme,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ScreenCreate(),
            ),
          );
        },
        child: const Icon(Icons.add_circle_outline, size: 55),
      ),
    );
  }

  Expanded method2() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
        child: Consumer<StudentDb>(
          builder: (context, value, child) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              value.getStudents();
              
              return (value.studentList.isEmpty
                  ?const BlankBackground()
                  : StudentTile(studentDb: value,                   // key: Key(value.studentList[index].id!),
                      id: value.studentList[index].id,
                      index:index,
                      ageText: value.studentList[index].age,
                      nameText: value.studentList[index].name, 
                    ));
            },
            separatorBuilder: (context, index) => kSizedBox10,
            itemCount: value.studentList.isEmpty ? 4 : value.studentList.length,
          ),
        ),
      ),
    );
  }
}
  // ValueNotifier<bool> get scrollNotificationFun => scrollNotifier;
    // scrollWidgetFunction(scrollNotificationFun)

