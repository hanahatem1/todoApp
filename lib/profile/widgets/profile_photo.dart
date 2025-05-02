import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       SizedBox(
        height: 110,
        width: 110,
        child:
         CircleAvatar(backgroundImage: AssetImage('assets/images/Avatar.png')),
      ),
      Positioned(
        bottom: 10,
        right: 3,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.blueColor,
          ),
          child: Icon(Icons.add,size:20),
        )
        )
      ]
    );
  }
}
