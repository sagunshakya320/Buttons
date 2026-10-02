import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.indigo.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.info,
                    size: 70,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Application Details',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'This Flutter application demonstrates '
                    'different Material button variants and '
                    'navigation techniques.',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),

              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.touch_app),
                        title: Text('Material Buttons'),
                        subtitle: Text('Different button variants'),
                      ),

                      ListTile(
                        leading: Icon(Icons.navigation),
                        title: Text('Navigation'),
                        subtitle: Text('Push, Pop and Routes'),
                      ),

                      ListTile(
                        leading: Icon(Icons.phone_android),
                        title: Text('Flutter'),
                        subtitle: Text('Material Design UI'),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back to Gallery'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}