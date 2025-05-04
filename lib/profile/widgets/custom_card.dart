import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.text, required this.icon});

final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Icon(icon,size: 24,)
          ],
        ),
      ),
    );
  }
}
