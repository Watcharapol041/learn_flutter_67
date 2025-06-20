// // step8: stateful widget
import 'package:flutter/material.dart';

// Step 10: make a model for store data
import 'package:learn_flutter_67/models/person.dart';

// Step 12: ue google fonts
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

  // void addQuantity() {
  //     setState(() {
  //       quantity++;
  //     });
  //   }

  // void subtractQuantity() {
  //     setState(() {
  //       if (quantity > 0) {
  //         quantity--;
  //       }
  //     });
  //   }

  // step 9: Listview widget
  //List data = ["Isak", "Wirtz", "Kerkaze", "Frimpong", "Mamardashvili"];

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //      children: [
    //       Text(
    //         "Quantity: $quantity",
    //         style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: addQuantity,
    //             child: const Text("Add"),
    //           ),
    //           const SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: subtractQuantity,
    //             child: const Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //      ],
    //   ),
    // );
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            // step 11: use a enum
            color: personList[index].job.color,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          // child: Text(
          //   data[index],
          //   style: TextStyle(
          //     fontSize: 24,
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personList[index].name,
                    // style: const TextStyle(
                    //   fontSize: 24,
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // step 12: use google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Age: ${personList[index].age}",
                    //style: TextStyle(fontSize: 18, color: Colors.white70),
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "Job: ${personList[index].job.title}",
                    //style: TextStyle(fontSize: 18, color: Colors.white70),
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  Image.asset(
                    personList[index].job.image,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: personList.length,
    );
  }
}
