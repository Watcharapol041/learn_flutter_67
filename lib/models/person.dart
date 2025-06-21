import 'package:flutter/material.dart';

// Step 10: make a model for store data
// class Person {
//   String name;
//   int age;
//   String job;

//   // Constructor
//   Person({required this.name, required this.age, required this.job});
// }

// List<Person> people = [
//   Person(name: "Isak", age: 22, job: "Developer"),
//   Person(name: "Wirtz", age: 23, job: "Designer"),
//   Person(name: "Kerkaze", age: 24, job: "Manager"),
//   Person(name: "Frimpong", age: 25, job: "Analyst"),
//   Person(name: "Mamardashvili", age: 26, job: "Architect"),
// ];

// Step 11: use a enum

enum Job {
  Engineer(title: "Engineer", image: "assets/engineer.png", color: Colors.blue),
  Doctor(title: "Doctor", image: "assets/doctor.png", color: Colors.red),
  Teacher(title: "Teacher", image: "assets/teacher.png", color: Colors.green),
  Artist(title: "Artist", image: "assets/artist.png", color: Colors.purple),
  Chef(title: "Chef", image: "assets/chef.png", color: Colors.orange);

  final String title;
  final String image;
  final Color color;

  const Job({required this.title, required this.image, required this.color});
}

class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> personList = [
  Person(name: "Isak", age: 22, job: Job.Engineer),
  Person(name: "Wirtz", age: 23, job: Job.Doctor),
  Person(name: "Kerkaze", age: 24, job: Job.Teacher),
  Person(name: "Frimpong", age: 25, job: Job.Artist),
  Person(name: "Mamardashvili", age: 26, job: Job.Chef),
];
