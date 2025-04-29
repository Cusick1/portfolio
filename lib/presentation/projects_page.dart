import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.tertiaryContainer,
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
