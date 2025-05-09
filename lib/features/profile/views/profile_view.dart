import 'package:flutter/material.dart';
import 'package:to_do_app/features/home/presentation/widgets/custom_button.dart';
import 'package:to_do_app/features/profile/widgets/custom_card.dart';
import 'package:to_do_app/features/profile/widgets/custom_card_dark_mode.dart';
import 'package:to_do_app/features/profile/widgets/profile_photo.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.onThemeChanged});
final void Function(bool)? onThemeChanged;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 14,vertical: 40),
        child: Column(
          children: [
           const SizedBox(height:30),
            Center(
              child: Column(
                children: [
                const ProfilePhoto(),
                 const SizedBox(height: 12,),
                  Text('Hana Hatem',style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ))
                ],
              ),
            ),
           const SizedBox(height: 25,),
           const CustomCard(text: 'Account details', icon: Icons.person),
            const SizedBox(height: 7,),
            const CustomCard(text: 'Notifactions', icon: Icons.notifications),
            const SizedBox(height: 7,),
            const CustomCardDarkMode(),
            const SizedBox(height: 7,),
            const CustomCard(text: 'Support', icon: Icons.contact_support),
            const SizedBox(height: 10,),
            const CustomButton(height: 45, width: 360, text: 'Sign Out')
          ],
        ),
      ),
    );
  }
}