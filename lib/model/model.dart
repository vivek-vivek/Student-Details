import 'package:hive_flutter/adapters.dart';

part 'model.g.dart';
@HiveType(typeId: 1)
class StudentModel {

  @HiveField(0)
  String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  StudentModel({required this.id,required this.name, required this.age});
}
