import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0), child: ContactInfo()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Summary', style: TextStyle(fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('link1'), Text('link2')]),
            ),
          ],
        ),
      ),
    );
  }
}
