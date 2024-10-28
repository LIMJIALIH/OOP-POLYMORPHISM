import 'package:flutter/material.dart';
import 'bus.dart';
import 'lrt_etc.dart';
import 'ets.dart';
import 'airplane.dart';

class Transports extends StatelessWidget {
  final double fontSize; // Add font size parameter

  const Transports({super.key, this.fontSize = 30.0}); // Set default font size

  @override
  Widget build(BuildContext context) {
    List<String> names = ['BUS', 'LRT', 'ETS', 'AIRPLANE'];
    List<String> imagePaths = [
      'assets/images/Bus.png',
      'assets/images/LRT.png',
      'assets/images/ETS (1).png',
      'assets/images/Airplane (1).png'
    ];
    List<Widget> screens = [
      const BusScreen(),
      const LrtEtcScreen(),
      const EtsScreen(),
      const AirplaneScreen()
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transports'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
              left: 60, // Position the green line on the left
              top: 0,
              bottom: 0,
              child: Container(
                width: 4,
                color: Colors.green, // Green vertical line
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(names.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: _buildTransportItem(
                    context,
                    names[index],
                    imagePaths[index],
                    screens[index],
                    fontSize, // Pass fontSize to each item
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportItem(BuildContext context, String name, String imagePath, Widget targetScreen, double fontSize) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Row(
        children: [
          Container(
            width: 120, // Diameter of the circle
            height: 120, // Diameter of the circle
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  return const Center(
                    child: Text('Failed to load image'),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 20.0), // Space between circle and text
          Text(
            name,
            style: TextStyle(
              fontSize: fontSize, // Set adjustable font size
              color: Colors.black,
              fontStyle: FontStyle.italic, // Apply cursive/italic style
            ),
          ),
        ],
      ),
    );
  }
}
