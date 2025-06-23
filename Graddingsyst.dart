import 'dart:io';

void main() {
  
  Map<String, int> gradingScale = {
    'A': 80,
    'B+': 75,
    'B': 70,
    'C+': 65,
    'C': 60,
    'D+': 55,
    'D': 50,
    'E': 45,
    'F': 0,
  };

  
  String calculateGrade(double totalScore) {
    if (totalScore >= gradingScale['A']!) {
      return 'A';
    } else if (totalScore >= gradingScale['B+']!) {
      return 'B+';
    } else if (totalScore >= gradingScale['B']!) {
      return 'B';
    } else if (totalScore >= gradingScale['C+']!) {
      return 'C+';
    } else if (totalScore >= gradingScale['C']!) {
      return 'C';
    } else if (totalScore >= gradingScale['D+']!) {
      return 'D+';
    } else if (totalScore >= gradingScale['D']!) {
      return 'D';
    } else if (totalScore >= gradingScale['E']!) {
      return 'E';
    } else {
      return 'F';
    }
  }

  
  stdout.write('Enter the number of students: ');
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  
  for (var i = 1; i <= numberOfStudents; i++) {
    print('\nEnter details for student $i:');

    
    stdout.write('Enter continuous assessment score: ');
    double continuousAssessment = double.parse(stdin.readLineSync()!);

    stdout.write('Enter exam score: ');
    double examScore = double.parse(stdin.readLineSync()!);

    stdout.write('Enter project score: ');
    double projectScore = double.parse(stdin.readLineSync()!);

    
    double totalScore = continuousAssessment + examScore + projectScore;

    
    String letterGrade = calculateGrade(totalScore);

    
    print('Total Score: $totalScore');
    print('Grade: $letterGrade');
  }
}