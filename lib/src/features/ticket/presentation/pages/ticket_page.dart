import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ticket ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.whiteColor),),
      ),
    );
  }
}
