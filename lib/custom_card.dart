import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String name;
  String position;
  String email;
  String phoneNumber;
  String imageUrl;

  CustomCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 204, 225),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 50, backgroundImage: NetworkImage(imageUrl)),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            position,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 131, 131, 131),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: const Color.fromARGB(255, 255, 101, 175),
              ),
              SizedBox(width: 5),
              Text(email),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Color.fromARGB(255, 255, 101, 175)),
              SizedBox(width: 5),
              Text(phoneNumber),
            ],
          ),
        ],
      ),
    );
  }
}
