class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
}

void main() {
  List<Person> list = [
    Person(name: "Ram", age: 10),
    Person(name: "Hari", age: 11),
    Person(name: "Sita", age: 15),
  ];
  for (int i = 0; i < list.length; i++) {
    print("""
Name: ${list[i].name}
Age: ${list[i].age}
""");
  }
}
