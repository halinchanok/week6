import 'package:flutter/material.dart';

class Traffic extends StatefulWidget {
  const Traffic({super.key});

  @override
  State<Traffic> createState() => _HomeworkState();
}

class _HomeworkState extends State<Traffic> {
  double _opacityRed = 1.0;
  double _opacityYellow = 0.3;
  double _opacityGreen = 0.3;
  double radiusRed = 20;
  double radiusYellow = 0;
  double radiusGreen = 0;

  void _toggleOpacity() {
    setState(() {
      if (_opacityRed == 1.0) {
        _opacityRed = 0.3;
        _opacityYellow = 1.0;
        _opacityGreen = 0.3;
        radiusYellow = 20;
        radiusRed = 0;
      } else if (_opacityYellow == 1.0) {
        _opacityRed = 0.3;
        _opacityYellow = 0.3;
        _opacityGreen = 1.0;
        radiusGreen = 20;
        radiusYellow = 0;
      } else {
        _opacityRed = 1.0;
        _opacityYellow = 0.3;
        _opacityGreen = 0.3;
        radiusRed = 20;
        radiusGreen = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Traffic Light Animation"))),
      backgroundColor: const Color.fromARGB(255, 255, 247, 223),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: []),
          AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _opacityRed,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 79, 79),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 79, 79),
                    offset: Offset(0, 0),
                    blurRadius: radiusRed,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _opacityYellow,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 222, 92),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 222, 92),
                    offset: Offset(0, 0),
                    blurRadius: radiusYellow,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _opacityGreen,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 100, 255, 53),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 100, 255, 53),
                    offset: Offset(0, 0),
                    blurRadius: radiusGreen,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleOpacity,
            child: const Text('เปลี่ยนไฟ'),
          ),
        ],
      ),
    );
  }
}
