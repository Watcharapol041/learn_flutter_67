// Step 10: make a model for store data
class Person {
  String name;
  int age;
  String job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "Isak", age: 22, job: "Developer"),
  Person(name: "Wirtz", age: 23, job: "Designer"),
  Person(name: "Kerkaze", age: 24, job: "Manager"),
  Person(name: "Frimpong", age: 25, job: "Analyst"),
  Person(name: "Mamardashvili", age: 26, job: "Architect"),
];
