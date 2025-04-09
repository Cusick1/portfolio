import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
