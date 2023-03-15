import 'package:flutter/material.dart';


class MoreServicesWidget extends StatelessWidget {
  final String title;
  final dynamic icon;

  MoreServicesWidget({required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
      trailing:
          Icon(Icons.arrow_forward_ios_outlined, size: 17, color: Colors.black),
    );
  }
}