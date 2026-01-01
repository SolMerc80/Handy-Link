import 'package:flutter/material.dart';


class ServiceProviderHomepage extends StatelessWidget {
  const ServiceProviderHomepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Service Provider Homepage'), backgroundColor: Colors.deepPurple),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Management Panel
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text("Profile Management", style: TextStyle(fontSize: 18,)),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Edit profile'),
                      onTap: () {
                        // Navigate to edit profile
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.lock),
                      title: const Text('Change Password'),
                      onTap: () {
                        // Navigate to change password
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            // Reviews and Rating panel
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text('Reviews and Ratings', style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: const Text('View Reviews'),
                      onTap: () {
                        // Navigate to reviews screen
                      },
                    ),
                    
                    ListTile(
                      leading: const Icon(Icons.rate_review),
                      title: const Text('Rating Summary'),
                      onTap: () {
                        // Navigate to rating summary
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

