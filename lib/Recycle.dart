import 'package:flutter/material.dart';

class Recycle extends StatelessWidget {
  const Recycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recycle'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopicExpansionTile(
              title: 'Recycling and GreenWave: A Step Towards a Sustainable Future for Malaysia',
              description: '''
In a world where environmental challenges are increasing, it’s crucial for all of us to play a part in protecting the planet. GreenWave, an app created to raise awareness about environmental issues, is working to drive positive change in Malaysia. One of the key focuses of the app is promoting recycling—a simple, effective way to reduce waste and preserve the environment.
''',
            ),
            TopicExpansionTile(
              title: 'GreenWave’s Recycling Centers in KL',
              description: '''
GreenWave has set up recycling centers across an urban area of KL, as shown on the map, to make recycling easier and more accessible, with future plans to extend to additional locations throughout the city.
''',
              image: 'assets/images/KLMAP.png', // Ensure this image is in your assets folder
            ),
            TopicExpansionTile(
              title: 'Why GreenWave Promotes Recycling in Malaysia',
              description: '''
Malaysia, like many other countries, faces challenges with waste management. With growing urbanization and consumerism, the amount of waste generated has steadily increased. Landfills are filling up, and the improper disposal of waste has serious consequences, from pollution to health hazards. Recycling offers a solution that helps tackle these issues head-on.

At GreenWave, we promote recycling because it is one of the easiest and most impactful ways to protect the environment. It reduces the need for raw materials, conserves energy, and cuts down on the waste that ends up in landfills. In a country like Malaysia, where managing waste sustainably is becoming increasingly important, recycling can make a significant difference.
''',
            ),
            TopicExpansionTile(
              title: 'Purpose of GreenWave’s Recycling Initiative',
              description: '''
- Educate the public on the importance of recycling and the benefits it brings, especially in reducing strain on Malaysia’s landfill sites.
- Help Malaysians understand the impact of plastic pollution, particularly in coastal areas and rivers, which are vital parts of our environment.
- Make recycling easy and accessible by providing users with the tools and knowledge to properly recycle in their communities.
''',
            ),
            TopicExpansionTile(
              title: 'How We Implemented Recycling in GreenWave',
              description: '''
1. Local Recycling Information: Users can find recycling centres close to them, complete with details on what materials each centre accepts. This is especially important for Malaysians who may not know where or how to recycle certain items.
2. Waste Separation Guides: Many Malaysians are unfamiliar with how to separate their waste for recycling. We provide clear, simple guides to help users understand how to sort paper, plastics, and other materials.
3. Community Involvement: GreenWave partners with local councils and NGOs in Malaysia to promote recycling campaigns and events. This fosters a sense of community and makes environmental protection a shared responsibility.
4. Rewards for Recycling: We’ve added a fun, competitive element by giving users points for recycling, which can be redeemed for rewards like discounts at eco-friendly stores or vouchers for local services.
''',
            ),
            TopicExpansionTile(
              title: 'Why Recycling is Crucial for Malaysia',
              description: '''
- Landfill Space: With limited space, many of Malaysia’s landfills are nearing capacity. Recycling helps reduce the volume of waste that ends up in these sites, easing the burden on local waste management systems.
- Environmental Impact: Malaysia’s rivers and oceans are facing increased plastic pollution. By recycling plastic and reducing single-use items, we can help protect marine life and preserve our natural resources.
- Energy Conservation: Recycling materials like aluminium and paper uses far less energy compared to creating new products from raw materials. This reduction in energy consumption is critical for a country like Malaysia, where energy demand continues to rise.
- Economic Benefits: Recycling can also contribute to the economy by creating jobs in the waste management and recycling sectors, while also reducing the costs associated with waste disposal.
''',
            ),
            TopicExpansionTile(
              title: 'Impact of GreenWave’s Recycling Efforts in Malaysia',
              description: '''
Since launching our recycling initiative, we’ve seen growing interest from Malaysians who want to make a difference. Communities are becoming more aware of the need for recycling, and individuals are starting to take action. Schools, businesses, and even local councils are using GreenWave to promote recycling as part of their environmental efforts.

One of the most inspiring impacts is the increase in local recycling campaigns. By providing easy access to recycling information and opportunities, GreenWave has helped Malaysians take steps towards reducing waste. In the long run, these small actions are creating a ripple effect, leading to cleaner streets, healthier environments, and a more sustainable future for Malaysia.
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
              height: 300,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return const Text('Image not found');
              },
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
