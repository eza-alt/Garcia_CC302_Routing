import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.person, size: 80),
          const SizedBox(height: 20),
          const Text(
            'Profile Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold
            ),
          ),
          
        ],
      ),
    );
  }
}