import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  PaymentWidget({required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: screenSize.width * 0.28,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 0.5,
                color: Colors.grey.shade300,
                offset: Offset(3, 3))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            Text(
              title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ]),
    );
  }
}
