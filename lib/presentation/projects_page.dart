import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 12),
            Padding(padding: const EdgeInsets.all(8.0), child: ContactInfo()),
          ],
        ),
      ),
    );
  }
}
