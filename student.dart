class Student {
  var details = {};

  Student(String name, int seat, int marks) {
    details["name"] = name;
    details["seat"] = seat;
    details["marks"] = marks;
  }

  void updateMarks(int marks) {
    details["marks"] = marks;
  }

  void displayStudent() {
    print(details);
  }
}

class Students {
  var students = {};

  void addStudent(String name, int seat, int marks) {
    students[name] = Student(name, seat, marks);
  }

  void updateMarks(String name, int marks) {
    students[name].updateMarks(marks);
  }

  void deleteStudent(String name) {
    students.remove(name);
  }

  void displayStudent(String name) {
    students[name].displayStudent();
  }
}

void main() {
  Students students = Students();
  students.addStudent("Neeraj Patil", 201073, 98);
  students.addStudent("Neel Patil", 201074, 95);
  students.displayStudent("Neeraj Patil");
  students.deleteStudent("Neeraj Patil");
  students.displayStudent("Neeraj Patil");
}
