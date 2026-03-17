import 'models.dart';

class GradeCalculator {
  // Lambda function for grade mapping
  final String Function(int) getGrade = (score) {
    if (score >= 90) return 'A';
    else if (score >= 80) return 'B';
    else if (score >= 70) return 'C';
    else if (score >= 60) return 'D';
    else return 'F';
  };

  // Higher-order function: takes a list of students and a formatter function
  void processGrades(List<Student> students, String Function(Student) formatter) {
    for (var student in students) {
      print(formatter(student));
    }
  }
}