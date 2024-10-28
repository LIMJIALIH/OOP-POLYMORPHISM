import 'package:flutter/material.dart';

class BusScreen extends StatelessWidget {
  const BusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus'),
        backgroundColor: Colors.lightGreen, // Set AppBar color to light green
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Petrol consumption buses primarily rely on internal combustion engines that burn gasoline to generate power. While these buses offer convenience and have a relatively low initial purchase cost, they are associated with higher fuel consumption and increased greenhouse gas emissions. As petrol prices fluctuate, operating costs for these buses can become unpredictable, impacting budgets for public transportation systems. Furthermore, reliance on fossil fuels raises concerns about environmental sustainability and air quality, prompting many cities to seek greener alternatives.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Hybrid buses combine traditional internal combustion engines with electric propulsion, resulting in improved fuel efficiency and reduced emissions compared to standard petrol buses. By utilizing electric power at low speeds and for short distances, these buses can significantly decrease fuel consumption, which leads to lower operational costs over time. Additionally, hybrid buses are designed to regenerate energy through braking, further enhancing their efficiency. Their eco-friendly technology not only helps mitigate urban air pollution but also aligns with the growing push for sustainable transportation solutions in urban environments.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0), // Space between text and images
            const Text(
              'Recommended Bus Companies',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0), // Adjustable space between title and images
            Padding(
              padding: const EdgeInsets.only(top: 20.0), // Adjust this value for desired spacing
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0, // Square shape
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildBusCompanyImage('assets/images/LAHoliday1.png', 'LA Holidays'),
                  _buildBusCompanyImage('assets/images/SuperNice.png', 'Super Nice'),
                  _buildBusCompanyImage('assets/images/KKKLExpress.png', 'KKKL Express'),
                  _buildBusCompanyImage('assets/images/Mayang Sari.png', 'Mayang Sari'), // Add a new placeholder
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build each bus company image with its name
  Widget _buildBusCompanyImage(String imagePath, String companyName) {
    return Column(
      children: [
        Container(
          width: 130, // Fixed width for rounded square
          height: 130, // Fixed height for rounded square
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
          textAlign: TextAlign.center, // Center align text
        ),
      ],
    );
  }
}
