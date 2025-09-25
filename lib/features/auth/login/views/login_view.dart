import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/auth/login/widgets/custom_button.dart';
import 'package:to_do_app/features/auth/login/widgets/custom_text_field.dart';
import 'package:to_do_app/features/auth/signup/views/signup_page.dart';
import 'package:to_do_app/features/home/presentation/views/home_page.dart';
import 'package:to_do_app/features/home/presentation/widgets/home_screen_navigate.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? pass;

  Future<bool> checkUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final saveEmail = prefs.getString("email");
    final savePass = prefs.getString("password");

    return email == saveEmail && pass == savePass;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  customTextField(
                    onChanged: (data) {
                      email = data;
                    },
                    hintText: 'Enter Your Email:',
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 30),
                  customTextField(
                    obscureText: true,
                    onChanged: (data) {
                      pass = data;
                    },
                    hintText: 'Enter Your Password:',
                    labelText: 'Password',
                  ),
                  const SizedBox(height: 30),
                  customButton(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        bool success = await checkUserData();
                        if (success) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreenNavigate()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Invalid email or password",
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                              backgroundColor: AppColors.greyColor,
                            ),
                          );
                        }
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: const Text(
                          '  Sign Up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
