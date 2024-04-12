import 'package:flutter/material.dart';

final ButtonStyle contactNowButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFEF5659), // Background color
  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
);

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
