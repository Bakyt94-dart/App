import 'package:flutter/material.dart';
import 'package:flutter_lesson_01/add/add_state.dart';

class AddViewModel extends ChangeNotifier {
  AddState _state = AddState.initial();
  AddState get state => _state;

  void addTask(String text) {
    if (text.trim().isEmpty) {
      _state = AddState(isInitial: false, isSucceed: false);
    } else {
      // Здесь могла бы быть логика сохранения в базу данных или API
      _state = AddState(isInitial: false, isSucceed: true);
    }
    notifyListeners(); // Уведомляем экран о смене состояния
  }
}