import 'package:flutter/material.dart';
import 'package:week6/custom_card.dart';
import 'package:week6/tuffic_light.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Traffic Light Animation"))),
      // body: Center(
      //   child: CustomCard(
      //     name: "Halinchanok Phanpmworachai",
      //     position: "Frontend",
      //     email: "halinchanok@gmail.com",
      //     phoneNumber: "088-281-5624",
      //     imageUrl:
      //         "https://i.pinimg.com/736x/ce/18/32/ce18326f474404bd6ea32a26653a27b2.jpg",
      //   ),
      // ),
      body: Center(child: Traffic()),
    );
  }
}
