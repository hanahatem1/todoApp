import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/login/views/login_view.dart';
import 'package:to_do_app/features/auth/login/widgets/custom_button.dart';
import 'package:to_do_app/features/auth/login/widgets/custom_text_field.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? pass;
  String? username;

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
                    'Register',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  customTextField(
                    onChanged: (data) => username = data,
                    hintText: 'Enter your username:',
                    labelText: 'User name',
                  ),
                  const SizedBox(height: 30),
                  customTextField(
                    onChanged: (data) => email = data,
                    hintText: 'Enter Your Email:',
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 30),
                  customTextField(
                    obscureText: true,
                    onChanged: (data) => pass = data,
                    hintText: 'Enter Your Password:',
                    labelText: 'Password',
                  ),
                  const SizedBox(height: 30),
                  customButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      }
                    },
                    text: 'Create Account',
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          '  Sign In',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
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
