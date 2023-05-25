import 'package:flutter/material.dart';

class ErrorWidget2 extends StatelessWidget {
  const ErrorWidget2();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error_outline,
        color: Colors.redAccent,
        size: 20,
      ),
    );
  }
}
