class Students {
  String name;
  int age;
  double score;

  Students({required this.name, required this.age, required this.score});

  String getGrade(){
    if( score >= 90) return 'A+';
    else if( score >= 80) return 'A';
    else if( score >= 70) return 'B';
    else if( score >= 60) return 'C';
    else return 'F';
  }
}