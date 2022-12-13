import 'package:details_pro/controller/student_db_controler.dart';
import 'package:details_pro/view/home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

import 'model/model.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  await Hive.initFlutter();
  //* StudentModel Db registering or opening
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context,) => StudentDb(),
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  ScreenHome(),
      ),
    );
  }
}
