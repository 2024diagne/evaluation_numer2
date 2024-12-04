
import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskListPage extends StatefulWidget {
  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<Map> taskList = [
    {
      "title": "DFE",
      "description": "Developpement Front-end",
      "DateDebut": "2024-12-01",
      "Datefin": "2024-12-05",
    },
    {
      "title": "DBE",
      "description": "Developpement back-end",
      "DateDebut": "2024-12-02",
      "Datefin": "2024-12-06",
    },
    {
      "title": "APD",
      "description": "Analyser de Performance Digital",
      "DateDebut": "2024-12-03",
      "Datefin": "2024-12-07",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Management")),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var task = taskList[index];
          return ListTile(
            title: Text(task['title']),
            subtitle: Text(task['description']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailsPage(task: task),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TaskFormPage()),
            );
          },
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
