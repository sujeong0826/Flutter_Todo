import 'package:flutter/material.dart';
import 'package:todo_list/models/Task.dart';

class TodoPage extends StatefulWidget {
  List<Task> tasks = Task.generateTasks(10);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Todo List')),
        body: Center(
            child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: widget.tasks.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    title: Text('${widget.tasks[index].name}'),
                    value: widget.tasks[index].done,
                    onChanged: (bool value) {
                      setState(() {
                        print(
                            'Setting done for ${widget.tasks[index].name} to $value');
                        widget.tasks[index].done = value;
                      });
                    },
                  );
                })));
  }
}
