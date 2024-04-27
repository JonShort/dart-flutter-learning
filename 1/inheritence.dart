class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String providedName) {
    this._name = providedName;
  }

  set setAge(int providedAge) {
    this._age = providedAge;
  }

  void run() {
    print('$_name runs!');
  }
}

class Student extends Person with Learner, Jumper {
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int providedSemester) {
    this._semester = providedSemester;
  }

  void party() {
    print('$_name is having a party!');
  }
}

mixin Learner {
  void study() {
    print('study');
  }
}

mixin Jumper {
  void jump() {
    print('jump');
  }
}

void main() {
  Student student1 = Student();
  student1.setSemester = 2;
  student1.setName = 'Boris';
  student1.setAge = 19;

  Person person1 = Person();
  person1.setName = 'Ludo';
  person1.setAge = 20;

  int s1 = student1.getSemester;
  print('student1 semester is $s1');

  student1.jump();
  student1.study();
  student1.run();
}
