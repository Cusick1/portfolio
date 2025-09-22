import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';
import 'package:portfolio/presentation/widgets/expansion_panels.dart';
import 'package:portfolio/presentation/widgets/panel_content.dart';

// TODO(gitCusick): Figure out what I need to do to make this page update when I save/hot reload.
class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.tertiaryContainer,
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(8), child: ContactInfo()),
            // Create a List of DropDown Widgets
            ExpansionPanels(
              content: [
                PanelContent(
                  header: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                    child: Text(
                      Constants.resumeProfile,
                      style: TextStyle(color: colorScheme.onSurface),
                    ),
                  ),
                  backgroundColor: colorScheme.onPrimary,
                ),
                PanelContent(
                  header: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                    child: Text(
                      'Work Experience',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                  body: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '''Nationwide Insurance Mutual Company\nFlagship Mobile & Backend Applications''',
                        ),
                        Row(
                          children: [
                            Text('Sr Software Engineer'),
                            Expanded(child: SizedBox()),
                            Text('March 2020 - Present'),
                          ],
                        ),
                        Text(
                          '''
\u2022 Led the development and implementation of multiple\n\t\t\tPerks and Rewards features, guiding the team
\t\t\tthrough planning, implementing, and releasing a\n\t\t\tcomplete redesign utilizing the Flutter framework.''',
                        ),
                        Text(
                          '''
\u2022 Integrated an in-house API, enhancing the feature’s\n\t\t\tcapabilities and user experience.''',
                        ),
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
