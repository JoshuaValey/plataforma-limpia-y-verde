import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const GreenButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
