import 'package:flutter/material.dart';
import 'package:to_do_app/auth/login/login.dart';
import 'package:to_do_app/auth/widgets/custom_button.dart';
import 'package:to_do_app/auth/widgets/custom_text_filed.dart';
import 'package:to_do_app/constant/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                  child: Text(
                'Sign up',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 60,
              ),
              CustomTextFiled(label: 'Name', hinttitle: 'Enter your name', icon: Icons.person_2_outlined, ),
              const SizedBox(height: 12),
              CustomTextFiled(
                label: 'E-mail',
                hinttitle: 'Enter your email',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 12),
              CustomTextFiled(
                label: 'password',
                hinttitle: 'Enter your password',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //CustomCheckBox(),
                      Text('Remeber me',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text('Forget Password?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                height: 40,
                width: 180,
                text: 'Sign up',
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: .5,
                    width: 130,
                    color: AppColors.blackColor,
                  ),
                  Text('  or login with  ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Container(
                    height: .5,
                    width: 130,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google_icon.png',
                      height: 40, width: 40),
                  SizedBox(width: 20),
                  Image.asset('assets/images/facebook_icon.png',
                      height: 40, width: 40),
                  SizedBox(width: 20),
                  Image.asset('assets/images/apple_icon.png',
                      height: 40, width: 40),
                ],
              ),
               const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('have an account already? '),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>LoginPage()));
                    },
                    child: Text('Login',style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold) ,))
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}