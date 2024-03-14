import 'package:flutter/material.dart';
import 'package:simple_food_app/components/Header_component.dart';
import 'package:simple_food_app/style/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            HeaderComponent(),
          ],
        ),
      ),
    );
  }
}
