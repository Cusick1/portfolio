import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';
import 'package:portfolio/presentation/widgets/expansion_panels.dart';
import 'package:portfolio/presentation/widgets/panel_content.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

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
            const Padding(padding: EdgeInsets.all(8), child: ContactInfo()),
            // Create a List of DropDown Widgets
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ExpansionPanels(
                  content: [
                    PanelContent(
                      canTapOnHeader: true,
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
                      backgroundColor: colorScheme.primary,
                    ),
                    PanelContent(
                      canTapOnHeader: true,
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
                            Text('Sr Software Engineer'),
                            Text('March 2020 - Present'),
                            Text(
                              '''\u2022 Led the development and implementation of
               multiple Perks and Rewards features, guiding the
               team through planning, implementing, and
               releasing a complete redesign utilizing the Flutter
               framework.''',
                            ),
                            Text(
                              '''
            \u2022 Integrated an in-house API, enhancing the feature’s capabilities and user experience.''',
                            ),
                          ],
                        ),
                      ),
                      isExpanded: true,
                      backgroundColor: colorScheme.primary,
                    ),
                    PanelContent(
                      canTapOnHeader: true,
                      header: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: Text(
                          'Education',
                          style: TextStyle(
                            fontSize: 16,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                      body: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.education,
                                  style: TextStyle(
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                                Text(
                                  Constants.educationSubText,
                                  style: TextStyle(
                                    color: colorScheme.onPrimaryContainer,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                      isExpanded: true,
                      backgroundColor: colorScheme.primary,
                    ),
                  ],
                  expandedColor: colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
