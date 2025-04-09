import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/contact_info.dart';
import 'package:portfolio/presentation/widgets/expansion_pannels.dart';
import 'package:portfolio/presentation/widgets/pannel_content.dart';

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
            // Create a List of DropDown Widgets
            ExpansionPannels(
              content: [
                PannelContent(
                  header: Text('header'),
                  body: Text('body'),
                  isExpanded: true,
                  backgroundColor: Colors.blue,
                ),
                PannelContent(
                  header: Text('header2'),
                  body: Text('body2'),
                  isExpanded: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
