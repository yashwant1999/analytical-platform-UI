import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isActive = false,
    required this.icon,
  });
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(200, 50),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: isActive ? Colors.black : Colors.grey,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Colors.white : const Color(0xff242424),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        onPressed: onPressed,
        label: Text(
          label,
          style: TextStyle(color: isActive ? Colors.black : Colors.grey),
        ),
      ),
    );
  }
}
