import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final String? subtitle = '';
  const MessageWidget(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          message,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle ?? '',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
