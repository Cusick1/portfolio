import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';
import 'package:portfolio/presentation/widgets/expansion_panels.dart';
import 'package:portfolio/presentation/widgets/panel_content.dart';

// TODO(gitCusick): FIgure out what I need to do to make this page update when I save/hot reload
class Resume extends StatelessWidget {
  const Resume({super.key});

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
            // Create a List of DropDown Widgets
            ExpansionPanels(
              content: [
                PanelContent(
                  header: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                    child: Text('Profile', style: TextStyle(fontSize: 16, color: colorScheme.onSurface)),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 8.0),
                    child: Text(Constants.resumeProfile, style: TextStyle(color: colorScheme.onSurface)),
                  ),
                  isExpanded: false,
                  backgroundColor: colorScheme.onPrimary,                  
                ),
                PanelContent(
                  header: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Work Experience',
                      style: TextStyle(fontSize: 16, color: colorScheme.onSurface),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nationwide Insurance Mutual Company\nFlagship Mobile & Backend Applications',
                        ),
                        Text('Software Engineer II\n\t\t\t\t\tMarch 2020 - Present'),
                      ],
                    ),
                  ),
                  isExpanded: true,
                  backgroundColor: colorScheme.onPrimary,
                ),
              ],
              expandedColor: colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
