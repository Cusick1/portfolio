import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const Key('contact_info'),
      children: [
        SizedBox(height: 40),
        Text('Ryan Cusick', style: TextStyle(fontSize: 25)),
        Text('(412) 992-7227', style: TextStyle(fontSize: 15)),
        Text('Ryan.Cusick.1997@gmail.com', style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
