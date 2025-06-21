// Step 13: TextFormField for input
// Step 14: DropdownButton for selection
import 'package:flutter/material.dart';
import 'package:learn_flutter_67/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: const Color.fromARGB(255, 3, 221, 255),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField<Job>(
                decoration: const InputDecoration(labelText: "Job"),
                items: Job.values.map((key) {
                  return DropdownMenuItem<Job>(
                    value: key,
                    child: Text(key.title),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 169, 25),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
