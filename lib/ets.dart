import 'package:flutter/material.dart';

class EtsScreen extends StatelessWidget {
  const EtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ETS'),
        backgroundColor: Colors.lightGreen, // Set AppBar color to light green
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome to the ETS Screen',
                style: TextStyle(
                  fontSize: 22, // Increased font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'In Malaysia, the Emissions Trading Scheme (ETS) is a crucial strategy in the nation\'s efforts to reduce carbon emissions and protect the environment. Operating on a "cap-and-trade" model, ETS sets a limit on carbon emissions for industries and allocates allowances to companies. Those that emit below their allocated limits can sell excess allowances to others, fostering a financial incentive for reducing emissions. This system encourages industries to adopt greener technologies, reduce their carbon footprints, and invest in energy-efficient practices.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
              SizedBox(height: 16),
              Text(
                'In addition to ETS, Malaysia has committed to achieving net-zero emissions by 2050. This ambitious goal is supported by policies such as carbon capture, utilization, and storage (CCUS), as well as a focus on renewable energy under the National Energy Policy (NEP) 2022-2040. These efforts align with Malaysia’s pledge to reduce greenhouse gas emissions by 45% by 2030 under the Paris Agreement.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
              SizedBox(height: 16),
              Text(
                'As part of the country\'s strategy, carbon pricing and domestic carbon trading markets are being developed to enhance environmental sustainability, create market opportunities, and ensure that Malaysia remains competitive in global trade.',
                style: TextStyle(fontSize: 18), // Increased font size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
