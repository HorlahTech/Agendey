class Task {
  String name;
  bool isDone;
  Task({required this.name, this.isDone = false});
  void taskStateToggle() {
    isDone = !isDone;
    print('value changed');
  }
}
