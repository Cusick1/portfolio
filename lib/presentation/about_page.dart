import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.tertiaryContainer,
      body: Column(
        children: [
          SizedBox(height: 12),
          Padding(padding: const EdgeInsets.all(8.0), child: ContactInfo()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              Constants.summary,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  Constants.linkedInLink,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  Constants.gitHubLink,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
