import 'package:flutter/material.dart';
import 'package:flutter_lesson_01/home/add_view_model.dart';

class AddPage extends StatefulWidget {
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _controller = TextEditingController();
  final AddViewModel _viewModel = AddViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Task')),
      body: ListenableBuilder(
        listenable: _viewModel,
        builder: (context, _) {
          final state = _viewModel.state;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'Название задачи',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                
                // Логика отображения сообщений в зависимости от состояния
                if (!state.isInitial && !state.isSucceed)
                  const Text(
                    'Введите название',
                    style: TextStyle(color: Colors.red),
                  ),
                if (!state.isInitial && state.isSucceed)
                  const Text(
                    'Сохранено!',
                    style: TextStyle(color: Colors.green),
                  ),
                  
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    _viewModel.addTask(_controller.text);
                  },
                  child: const Text('Сохранить'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}