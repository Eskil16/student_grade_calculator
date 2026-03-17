import '../lib/models.dart';
import '../lib/services.dart';
import '../lib/utils.dart';

void main() {
  print("Program started...");

  var students = [
    Student("Alice", 95),
    Student("Bob", 82),
    Student("Charlie"), // null score
    Student("Diana", 47)
  ];

  var calculator = GradeCalculator();

  calculator.processGrades(
    students,
    (student) => formatStudent(student, calculator.getGrade),
  );
}