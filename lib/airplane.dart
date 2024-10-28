import 'package:flutter/material.dart';

class AirplaneScreen extends StatelessWidget {
  const AirplaneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airplane'),
        backgroundColor: Colors.lightGreen, // Set AppBar color to light green
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Airplanes play a crucial role in Malaysia\'s transportation network, connecting the diverse regions of the country and facilitating international travel. With several major airports, including Kuala Lumpur International Airport (KLIA) and Penang International Airport, Malaysia has established itself as a significant hub for both regional and long-haul flights. The growth of low-cost carriers, such as AirAsia, has revolutionized air travel in the region, making it more accessible and affordable for both locals and tourists. This expansion has also spurred tourism, contributing to Malaysia\'s economy by attracting millions of visitors each year.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'The aviation sector in Malaysia is not just about passenger transport; it also encompasses cargo services, contributing significantly to trade and commerce. The country’s strategic location in Southeast Asia makes it an ideal transit point for goods traveling between Asia, Europe, and Australia. Malaysian airlines have invested in modern fleets and infrastructure to enhance efficiency and safety. Moreover, the government has been proactive in promoting aviation growth through various initiatives, including improving airport facilities and investing in technology, which further supports the industry’s development and sustainability.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0), // Space between text and images

            // Title for recommended airlines companies
            const Text(
              'Recommended Airlines Companies',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0), // Adjustable space between title and images

            // Grid for airlines companies
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: [
                _buildAirlinesCompanyImage('assets/images/AirAsia.png', 'AirAsia'),
                _buildAirlinesCompanyImage('assets/images/SingaporeAirlines.png', 'Singapore Airlines'),
                _buildAirlinesCompanyImage('assets/images/MASwings.png', 'MASwings'),
                _buildAirlinesCompanyImage('assets/images/malaysia-airlines.png', 'Malaysia Airlines'), // Placeholder for an additional airline
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build each airline company image with its name
  Widget _buildAirlinesCompanyImage(String imagePath, String companyName) {
    // Define a square size for the images
    double squareSize = 140.0; // You can adjust this value as needed

    return Column(
      children: [
        Container(
          width: squareSize, // Set width to square size
          height: squareSize, // Set height to square size
          decoration: BoxDecoration(
            color: Colors.grey[200], // Light grey background if the image fails
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
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return Center(
                  child: Text(
                    'Failed to load image',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 8.0), // Space between image and text
        Text(
          companyName,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
