import 'dart:io';



List<Map<String, dynamic>> students = [];
late int counter = 1;
void main() {
  String appname = "student mangment";
  print(appname);
  showmesseg();
  bool work = true;
  while (work) {
    showmesseg();
    int number = int.tryParse(stdin.readLineSync() ?? "") ?? 1;
    switch (number) {
      case 1:
        addstudent();
        break;
      case 2:
        removstudent();
        break;
      case 3:
        showstudents();
        break;

      case 5:
        work = false;
    }
  }
}

void showmesseg() {
  print("choos one at student");
  print("choos tow at student");
  print("choos three at student");
  print("choos four at student");
  print("choos five to stop system");
  stdout.write("chose number:");
}

void addstudent() {
  stdout.write("enter name:");
  String? name = stdin.readLineSync() ?? "";
  stdout.write("enter Level:");

  int Level = int.tryParse(stdin.readLineSync() ?? "") ?? 1;
  String dpartment = stdin.readLineSync() ?? "";
  stdout.write("enter name:");
  double gpa = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;
  students.add({
    'id': counter++,
    'name': name,
    'dpartmant': dpartment,
    'level': Level,
    'gpa': gpa,
  });
  print("the add scseccful:");
}

void removstudent() {
  stdout.write("enter id student:");
  int? id = int.tryParse(stdin.readLineSync() ?? "");
  if (id == null) {
    print("invalid");
    return;
  }
  students.remove((student) => student[id] == id);
  print("Remove done");
}

void showstudents() {
  if (students.isEmpty) {
    print(" The List is empty");
    return;
  } else {
    for (var student in students) {
      print(
        "id:${student['id']} | dapartment:${student['dpartment']} | level:${student['level']}"
      );
    }
  }
}
