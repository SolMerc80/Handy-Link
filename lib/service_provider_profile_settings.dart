import 'package:flutter/material.dart';

class ServiceProviderProfileSettings extends StatelessWidget {
  const ServiceProviderProfileSettings ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Settings'), backgroundColor: Colors.deepPurple),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/lib/assets/images/PHOTO-2026-01-05-17-10-37.jpg')
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}