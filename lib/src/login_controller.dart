import 'package:flutter/material.dart';
import 'package:simple_food_app/screens/home_screen.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final adminEmail = 'admin@gmail.com';
  final adminPassword = '123456';
  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (emailController.text == adminEmail &&
          passwordController.text == adminPassword) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      }
    } else {
      print('not right');
    }
  }
}
