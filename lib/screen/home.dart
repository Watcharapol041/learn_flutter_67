// step4: sperate the Home widget into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Step 5 : container, column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // Step 6: Image widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("images/ccc.png"),
        const SizedBox(height: 10),
        Image.network(
          "https://www.kidzstation.co.id/cdn/shop/files/0888-JAD30732-3.jpg?v=1744003141&width=1445",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}
