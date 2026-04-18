import 'package:flutter_lesson_01/database/app_database.dart';
import 'package:flutter_lesson_01/database/todo.dart';

abstract class AppRepository {
  List<Todo> getList();
}

class AppRepositoryImplementation extends AppRepository {
  final AppDatabase db;

  AppRepositoryImplementation({required this.db});

  @override
  List<Todo> getList() => db.getList();
}