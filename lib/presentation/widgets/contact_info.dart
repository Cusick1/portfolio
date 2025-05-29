import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Column(
      key: const Key('contact_info'),
      children: [
        Text(
          'Ryan Cusick',
          style: TextStyle(
            fontSize: 25,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        Text(
          '(412) 992-7227',
          style: TextStyle(
            fontSize: 15,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        Text(
          'Ryan.Cusick.1997@gmail.com',
          style: TextStyle(
            fontSize: 15,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
