class Student {
  final String name;
  final int? score; // nullable

  Student(this.name, [this.score]);

  @override
  String toString() => "Student(name: $name, score: $score)";
}