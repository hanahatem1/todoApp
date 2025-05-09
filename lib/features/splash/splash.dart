import 'package:flutter/material.dart';
import 'package:to_do_app/features/home/presentation/widgets/custom_button.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/presentation/widgets/home_screen_navigate.dart';
  

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/To do list-cuate.png',
                height: 250,
                width: 250,
              ),
              const SizedBox(height: 80),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Organize your tasks effortlessly',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
             const  Text(
                'Stay on top of your tasks and make the most of your time with simple task management',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20,),
             GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>const HomeScreenNavigate()));
              },
               child:const CustomButton(height: 40, width: double.infinity,text: 'Let\'s go',)
             )
            ],
          ),
        ),
      ),
    );
  }
}
