import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class customButton extends StatelessWidget {
 customButton({super.key,required this.text,this.onTap});

String text;
VoidCallback? onTap;
  @override
   Widget build(BuildContext context) { 
    return GestureDetector(
      onTap: onTap,
      child: Container(
                decoration: BoxDecoration(
                   color: AppColors.blueColor,
                   borderRadius: BorderRadius.circular(12)
                ),
               height: 50,
               width: double.infinity,
                child: Center(child: Text(text,style:const TextStyle(color: Colors.white),)),
              ),
    );
   }
}