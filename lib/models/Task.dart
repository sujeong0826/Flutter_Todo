class Task {
  String name;
  bool done;

  Task(this.name, this.done);

  static List<Task> generateTasks(int numTasks) {
    List<Task> generatedTaskList = [];
    for (var i = 0; i < numTasks; i++) {
      generatedTaskList.add(Task('task $i', false));
    }

    return generatedTaskList;
  }
}
