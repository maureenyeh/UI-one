class TaskModel {
  String title;
  String subTitle;
  DateTime publishDate;
  TaskStatus state = TaskStatus.notStarted;

  TaskModel(
      {required this.title, required this.subTitle, required this.publishDate});
}

enum TaskStatus { notStarted, inProgress, complete }
