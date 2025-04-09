import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0), child: ContactInfo()),
          ],
        ),
      ),
    );
  }
}
