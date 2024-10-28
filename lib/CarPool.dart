import 'package:flutter/material.dart';

class CarPool extends StatelessWidget {
  const CarPool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car-Pool'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopicExpansionTile(
              title: 'Carpooling and Green Wave: Simple Steps for a Greener Malaysia',
              description: '''
Green Wave encourages carpooling to reduce traffic, cut carbon emissions, and promote eco-friendly transportation. Carpooling helps Malaysians lower their carbon footprint by sharing rides, which means fewer cars on the road and cleaner air.
''',
            ),
            TopicExpansionTile(
              title: 'How Green Wave Supports Carpooling',
              description: '''
Green Wave updates its carpooling system in real-time, helping users connect with others traveling the same route. Users can easily find and offer rides, making it simple to join a carpool. This system encourages people to share rides regularly, making commuting more convenient and sustainable.
''',
            ),
            TopicExpansionTile(
              title: 'Importance of Carpooling',
              description: '''
- Reduces air pollution and traffic congestion in cities.
- Lowers individual carbon emissions, contributing to a greener Malaysia.
- Helps save on fuel costs and promotes eco-friendly travel.
- Offers a practical solution to Malaysia's growing traffic and environmental concerns.
''',
            ),
            TopicExpansionTile(
              title: 'Impact of Green Wave’s Carpooling Initiative',
              description: '''
By making carpooling accessible, Green Wave is fostering a culture of shared transportation. This reduces the number of vehicles on the road, leading to less congestion and lower emissions. It’s a simple yet effective way for people to contribute to environmental sustainability while saving money.
''',
            ),
            TopicExpansionTile(
              title: 'Why It’s Beneficial for Malaysians',
              description: '''
- Citizens can earn money by offering rides, providing a financial incentive for carpooling.
- Encourages community cooperation and makes travel more affordable.
- Helps Malaysia move towards greener, cleaner cities with less reliance on single-occupancy vehicles.
''',
            ),
            TopicExpansionTile(
              title: "Malaysia's Carbon Emissions Over Time",
              description: '''
The chart depicts that Malaysia’s carbon emissions have been steadily increasing. This increase comes from more cars on the road, factories, energy use, and other factors. As pollution grows, it has detrimental effects on the environment, contributing to climate change and affecting our air quality.

That’s why GreenWave was created. We focus on solutions like carpooling, helping Malaysians reduce their carbon footprint. By sharing rides, we can lower the number of cars on the road, cutting down on emissions and making transportation more eco-friendly. Together, through GreenWave, we can make a positive change for Malaysia’s environment.
''',
              image: 'assets/images/co2_emission_chart.png', // Add your chart image here
            ),
          ],
        ),
      ),
    );
  }
}

class TopicExpansionTile extends StatelessWidget {
  final String title;
  final String description;
  final String? image;

  const TopicExpansionTile({
    required this.title,
    required this.description,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        if (image != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.asset(
              image!,
              height: 250.0,
              fit: BoxFit.contain,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(description),
        ),
      ],
    );
  }
}
