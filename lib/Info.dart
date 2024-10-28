import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopicExpansionTile(
              title: 'Why We Encourage the Use of Hybrid Cars',
              description: '''
- Eco-friendly technology
- Reduced greenhouse gas emissions such as carbon monoxide (CO) and carbon dioxide (CO2)
- Reduces fuel costs
- Reduction in noise pollution
- Support for renewable energy
- e.g., Toyota Prius, Tesla Semi, and Cybertruck
''',
            ),
            TopicExpansionTile(
              title: 'Why We Encourage the Use of Renewable Energy',
              description: '''
- Improved air quality
- Biodiversity preservation
- Help in mitigating climate change
- Conservation of water resources
- Reduced dependence on fossil fuels
- e.g., solar, wind, hydro, and geothermal energy
''',
            ),
            TopicExpansionTile(
              title: 'Why We Encourage the Use of Green Technology',
              description: '''
- Promotes efficient use of natural resources
- Reduces the depletion of non-renewable resources
- Minimizes habitat destruction and pollution
- Provides educational opportunities
- Supports sustainable urban development
- e.g., Photovoltaic, vertical farming, and carbon capture technologies
''',
            ),
            TopicExpansionTile(
              title: 'Why We Need to Reduce the Usage of Plastic Bags',
              description: '''
- Protects marine animals from ingestion or entanglement
- Reduces the release of microplastics into the environment
- Minimizes waste management challenges
- Reduces clean-up costs
- Prevents drainage clogs
''',
            ),
            TopicExpansionTile(
              title: 'Why We Encourage the Use of Public Transport Instead of Personal Cars',
              description: '''
- Energy efficiency, more fuel-efficient
- Decreases traffic congestion
- Reduces the need for large parking areas and road expansions
- Affordable for everyone
- Reduces air and sound pollution
''',
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

  const TopicExpansionTile({
    required this.title,
    required this.description,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(description),
        ),
      ],
    );
  }
}
