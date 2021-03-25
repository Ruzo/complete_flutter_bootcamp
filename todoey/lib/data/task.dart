class Task {
  final String name;
  bool _done = false;

  Task({required this.name});

  bool get done => _done;

  set done(bool? isDone) => _done = isDone ?? false;
}
