import 'package:details_pro/model/model.dart';
import 'package:details_pro/controller/student_db_controler.dart';
import 'package:details_pro/controller/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/app_bar.dart';
import 'widgets/text_form_felid.dart';

// ignore: must_be_immutable
class EditScreen extends StatelessWidget {
  final int index;
  final id;

  EditScreen({
    Key? key,
    required this.index,
    required this.id,
  }) : super(key: key);

  TextEditingController newStudentName = TextEditingController();
  TextEditingController newStudentAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: AppBarScreen()),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EditFormFelid(
                controllerValue: newStudentName,
                hintText: 'Name',
                newIcon: Icons.person,
              ),
              kSizedBox10,
              EditFormFelid(
                  controllerValue: newStudentAge,
                  hintText: 'Age',
                  newIcon: Icons.timelapse_sharp),
              kSizedBox20,
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    editMethod(context);
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: rTheme),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  editMethod(BuildContext context) {
    final StudentModel stud = StudentModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        name: newStudentName.text,
        age: newStudentAge.text);
    Provider.of<StudentDb>(context, listen: false)
        .editStudent(studentModel: stud, id:index);
    Navigator.pop(context);
  }
}
