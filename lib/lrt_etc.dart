import 'package:flutter/material.dart';

class LrtEtcScreen extends StatelessWidget {
  const LrtEtcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LRT, MRT, MONOREL'),
        backgroundColor: Colors.lightGreen, // Set AppBar color to light green
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome to the LRT, MRT, MONOREL Screen',
                style: TextStyle(
                  fontSize: 22, // Increased font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'RapidKL\'s urban rail services, including the LRT, MRT, and Monorail systems, provide an affordable and efficient alternative to driving in Kuala Lumpur. With ticket prices typically lower than other transportation options, these rail services offer a cost-effective way for residents and visitors to travel across the city.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
              SizedBox(height: 16),
              Text(
                'The convenience of a well-connected network, covering key areas through different lines, helps people save time by avoiding the heavy traffic congestion typical of Kuala Lumpur\'s roads. The frequent train schedules and extensive routes allow commuters to reach their destinations faster and more predictably, improving overall productivity and reducing travel stress.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
              SizedBox(height: 16),
              Text(
                'In addition to saving time, the LRT, MRT, and Monorail systems contribute significantly to reducing carbon emissions. By encouraging people to use public transport instead of driving, these rail networks help reduce the number of vehicles on the road, thus lowering overall fuel consumption and air pollution. Fewer cars on the road also mean less traffic congestion, contributing to a cleaner environment and improving air quality.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
              SizedBox(height: 16),
              Text(
                'Furthermore, these electric-powered trains operate with minimal emissions, making them a more environmentally friendly option compared to traditional cars, which rely on fossil fuels. In this way, RAPIDKL helps both in reducing traffic jams and protecting the environment by promoting a sustainable transportation solution.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
