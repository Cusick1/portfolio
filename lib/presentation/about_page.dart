import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';

class About extends StatelessWidget {
  const About({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        children: [
          SizedBox(height: 12),
          Padding(padding: const EdgeInsets.all(8), child: ContactInfo()),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              Constants.summaryPart1,
              style: TextStyle(fontSize: 20, color: colorScheme.onSurface),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
              Constants.summaryPart2,
              style: TextStyle(fontSize: 15, color: colorScheme.onSurface),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                InkWell(
                  onTap: () => _launchUrl(Constants.linkedInLink),
                  child: Text(
                    Constants.linkedInLink,
                    style: TextStyle(
                      color: colorScheme.secondary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _launchUrl(Constants.gitHubLink),
                  child: Text(
                    Constants.gitHubLink,
                    style: TextStyle(
                      color: colorScheme.secondary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
