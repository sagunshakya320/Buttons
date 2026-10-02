import 'package:flutter/material.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const _DetailsFromFab(),
            ),
          );
        },
        tooltip: 'Open Details',
        child: const Icon(Icons.add),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                ),

                child: const Column(
                  children: [
                    Icon(
                      Icons.widgets,
                      size: 45,
                      color: Colors.indigo,
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Material Button Gallery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Explore different Material button styles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Navigation section
              const Text(
                'Navigation Buttons',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Profile - Navigator.push()
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const _ProfileFromPush(),
                    ),
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('Profile - Navigator.push()'),
              ),

              const SizedBox(height: 10),

              // Details - Named Route
              FilledButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/details',
                  );
                },
                icon: const Icon(Icons.info),
                label: const Text('Details - Named Route'),
              ),

              const SizedBox(height: 10),

              // Settings - Named Route
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settings',
                  );
                },
                icon: const Icon(Icons.settings),
                label: const Text('Settings - Named Route'),
              ),

              const SizedBox(height: 30),

              // Material buttons
              const Text(
                'Material Buttons',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  showMessage(context, 'Elevated Button pressed');
                },
                child: const Text('Elevated Button'),
              ),

              const SizedBox(height: 10),

              // Filled Button
              FilledButton(
                onPressed: () {
                  showMessage(context, 'Filled Button pressed');
                },
                child: const Text('Filled Button'),
              ),

              const SizedBox(height: 10),

              // Filled Tonal Button
              FilledButton.tonal(
                onPressed: () {
                  showMessage(context, 'Filled Tonal Button pressed');
                },
                child: const Text('Filled Tonal Button'),
              ),

              const SizedBox(height: 10),

              // Outlined Button
              OutlinedButton(
                onPressed: () {
                  showMessage(context, 'Outlined Button pressed');
                },
                child: const Text('Outlined Button'),
              ),

              const SizedBox(height: 10),

              // Text Button
              TextButton(
                onPressed: () {
                  showMessage(context, 'Text Button pressed');
                },
                child: const Text('Text Button'),
              ),

              const SizedBox(height: 30),

              // Action buttons
              const Text(
                'Action Buttons',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // IconButton
                  IconButton(
                    onPressed: () {
                      showMessage(context, 'Favorite pressed');
                    },
                    icon: const Icon(Icons.favorite),
                    tooltip: 'Favorite',
                    iconSize: 30,
                  ),

                  // Button with icon
                  FilledButton.icon(
                    onPressed: () {
                      showMessage(context, 'Download pressed');
                    },
                    icon: const Icon(Icons.download),
                    label: const Text('Download'),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Custom styled button
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    showMessage(context, 'Custom button pressed');
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 6,
                  ),

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text(
                        'Custom Styled Button',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Pop demonstration
              TextButton.icon(
                onPressed: () {
                  showMessage(
                    context,
                    'You are already on the Button Gallery.',
                  );
                },
                icon: const Icon(Icons.home),
                label: const Text('Button Gallery Home'),
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

// Navigator.push() needs a destination widget.
// We use a small wrapper because the actual ProfileScreen
// is provided through the named route as well.
class _ProfileFromPush extends StatelessWidget {
  const _ProfileFromPush();

  @override
  Widget build(BuildContext context) {
    return const ProfileScreenForPush();
  }
}

class ProfileScreenForPush extends StatelessWidget {
  const ProfileScreenForPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Student Profile',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text('Milan'),
            ),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Role'),
              subtitle: Text('Student'),
            ),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('student@example.com'),
            ),

            const SizedBox(height: 20),

            FilledButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailsFromFab extends StatelessWidget {
  const _DetailsFromFab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.info_outline,
              size: 70,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            const Text(
              'Button Gallery Details',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'This screen was opened using Navigator.push() '
                  'from the Floating Action Button.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ),
  );
}