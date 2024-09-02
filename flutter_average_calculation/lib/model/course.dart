class Course {
  final String courseName;
  final double courseLetter;
  final double courseCredit;

  Course(
      {required this.courseName,
      required this.courseLetter,
      required this.courseCredit});

  @override
  String toString() {
    return '$courseName $courseLetter $courseCredit';
  }
}
