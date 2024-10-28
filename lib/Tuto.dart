import 'package:flutter/material.dart';
import 'CarPool.dart';
import 'Recycle.dart';
import 'Info.dart';
import 'Transports.dart'; // Import the new files
import 'Register.dart';

class Tuto extends StatelessWidget {
  const Tuto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0), // Increase AppBar height
        child: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Stack(
            children: [
              Image.asset(
                'assets/images/GreenWave (400 x 200 px) (2).png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 20.0,
                left: 16.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle, size: 35.0, color: Colors.green), // Adjust icon size and color
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  List<String> names = ['Car-Pool', 'Recycling', 'Info', 'Transports'];
                  List<Widget> routes = [
                    const CarPool(),
                    const Recycle(),
                    const Info(),
                    const Transports()
                  ];
                  List<String> assetPaths = [
                    'assets/images/Untitled design.png',
                    'assets/images/Untitled design (2).png',
                    'assets/images/Untitled design (1).png',
                    'assets/images/Untitled design (3).png',
                  ];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => routes[index]),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                assetPaths[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            names[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  _buildImageContainer(context, 'assets/images/Olivia Wilson (1).png'),
                  _buildImageContainer(context, 'assets/images/Olivia Wilson (2).png'),
                  _buildImageContainer(context, 'assets/images/Olivia Wilson (3).png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context, String imageUrl) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          barrierColor: Colors.black54,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 350.0,
        height: 100.0,
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
