// Step 13: TextFormField for input
// Step 14: DropdownButton for selection
// Step 15: Form state management
// Step 16: Submit button
import 'package:flutter/material.dart';
import 'package:learn_flutter_67/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  // Step 15: Form state management
  // Step 16: Submit button
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.Doctor;

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
          child: Form(
            // Step 15: Form state management
            // Step 16: Submit button
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Name"),
                  // Step 15: Form state management
                  // Step 16: Submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  // Step 15: Form state management
                  // Step 16: Submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Age';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<Job>(
                  value: _job,
                  // Step 15: Form state management,Step 16: Submit button
                  // Step 16: Submit button
                  decoration: const InputDecoration(labelText: "Job"),
                  items: Job.values.map((key) {
                    return DropdownMenuItem<Job>(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    //print(value);
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    _formKey.currentState?.validate();
                    _formKey.currentState?.save();
                    personList.add(Person(name: _name, age: _age, job: _job));
                    print(personList.length);
                    _formKey.currentState!
                        .reset(); // Reset the form after submission
                  },
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
      ),
    );
  }
}
