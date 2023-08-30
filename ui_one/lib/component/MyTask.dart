import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../model/TaskModel.dart';

class MyTask extends StatefulWidget {
  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = [
      TaskModel(
          title: 'Create a new Assert Manager for FlutterFlow',
          subTitle: 'Finish out Container Project',
          publishDate: DateTime(2023, 4, 20, 12, 0)),
      TaskModel(
          title: 'Mark the task as complete',
          subTitle: 'Launch Stream App Tutorial',
          publishDate: DateTime(2023, 4, 20, 12, 0)),
      TaskModel(
          title: 'Grade Franklins Figma File',
          subTitle: 'Bethel Tech',
          publishDate: DateTime(2023, 3, 26, 23, 0)),
      TaskModel(
          title: 'Create a new Assert Manager for FlutterFlow',
          subTitle: 'Launch a Fully Responsive Kanban Board App',
          publishDate: DateTime(2023, 1, 25, 23, 0, 0)),
    ];

    Widget taskTemplate(TaskModel task) {
      return Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        color: Colors.purple[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.e,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                        '${task.title}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //     flex: 1,
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //           color: Colors.purple,
                  //           borderRadius:
                  //               BorderRadius.all(Radius.circular(30.0))),

                  //       child: TextButton(
                  //         // height: 30,
                  //         child: Text(
                  //           // '${task.state}',
                  //           'In Progress',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ))
                ],
              ),
              SizedBox(
                child: Text(
                  '${task.subTitle}',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 91, 89, 89),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: tasks.map((value) => taskTemplate(value)).toList(),
    );
  }
}
