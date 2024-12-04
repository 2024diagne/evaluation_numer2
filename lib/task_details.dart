
import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final Map task;

  TaskDetailsPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description: ${task['description']}'),
            SizedBox(height: 10),
            Text('Date de Début: ${task['DateDebut']}'),
            SizedBox(height: 10),
            Text('Date de fin: ${task['Datefin']}'),
          ],
        ),
      ),
    );
  }
}
