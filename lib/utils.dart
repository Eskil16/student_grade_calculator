import 'models.dart';

String formatStudent(Student student, String Function(int) gradeFn) {
  return student.score != null
      ? "${student.name} scored ${student.score}: Grade ${gradeFn(student.score!)}"
      : "No score for ${student.name}";
}
