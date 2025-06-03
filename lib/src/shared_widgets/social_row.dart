import 'package:flutter/material.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _socialIcon(Icons.facebook),
        _socialIcon(Icons.g_mobiledata),
        _socialIcon(Icons.apple),
      ],
    );
  }

  Widget _socialIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white10,
      child: Icon(icon, color: Colors.white),
    );
  }
}
