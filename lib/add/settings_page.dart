import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Настройки'),
        backgroundColor: isDark ? Colors.grey[800] : Colors.red,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Темная тема',
              style: TextStyle(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            
            trailing: Switch(
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
              },
            ),
          ),

          SizedBox(height: 20),

          Text(
            'Это экран настроек',
            style: TextStyle(
              fontSize: 18,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}