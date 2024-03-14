import 'package:flutter/material.dart';
import 'package:simple_food_app/style/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.lightBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Deliver To',
                        style: TextStyle(
                            color: AppColors.primaryColor, fontSize: 25),
                      ),
                      Text(
                        'Sohel,Rajshahi',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/ogw/AF2bZyg6aflM_I4b4FTogenFtqqBvWYHAW1IleAQdk0bFQ=s32-c-mo')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
