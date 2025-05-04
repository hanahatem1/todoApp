import 'package:flutter/material.dart';
import 'package:to_do_app/auth/widgets/custom_button.dart';
import 'package:to_do_app/profile/widgets/custom_card.dart';
import 'package:to_do_app/profile/widgets/custom_card_dark_mode.dart';
import 'package:to_do_app/profile/widgets/profile_photo.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.onThemeChanged});
final void Function(bool)? onThemeChanged;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 40),
        child: Column(
          children: [
            SizedBox(height:30),
            Center(
              child: Column(
                children: [
                 ProfilePhoto(),
                  SizedBox(height: 12,),
                  Text('Hana Hatem',style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ))
                ],
              ),
            ),
            SizedBox(height: 25,),
            CustomCard(text: 'Account details', icon: Icons.person),
            SizedBox(height: 7,),
            CustomCard(text: 'Notifactions', icon: Icons.notifications),
            SizedBox(height: 7,),
            CustomCardDarkMode(),
            SizedBox(height: 7,),
            CustomCard(text: 'Support', icon: Icons.contact_support),
            SizedBox(height: 10,),
            CustomButton(height: 45, width: 360, text: 'Sign Out')
          ],
        ),
      ),
    );
  }
}