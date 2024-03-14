import 'package:flutter/material.dart';
import 'package:simple_food_app/style/app_colors.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
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
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 25),
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
        const Text(
          'What would You like \n to order!',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: AppColors.lightBackgroundColor,
                  filled: true,
                  hintText: 'Find your restaurant or food...',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1)),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.filter_6_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
