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
        child: ListView(
          children: [
            SizedBox(height: 12),
            Padding(padding: const EdgeInsets.all(8.0), child: ContactInfo()),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('1')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(width: 36),
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('2')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('3')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(width: 36),
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('4')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('5')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(width: 36),
                  Column(
                    children: [
                      CircleAvatar(radius: 80, child: Text('6')),
                      SizedBox(height: 8),
                      Text(
                        'More coming soon!',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
