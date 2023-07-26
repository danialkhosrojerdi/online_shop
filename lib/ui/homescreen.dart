import 'package:flutter/material.dart';
import 'package:online_shop/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScreenColor,
      body: SafeArea(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) =>
                const CategoryHorizontalItemsList(),
          ),
        ),
      ),
    );
  }
}

class CategoryHorizontalItemsList extends StatelessWidget {
  const CategoryHorizontalItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: ShapeDecoration(
              color: Colors.red,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              shadows: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 30,
                  spreadRadius: -12,
                  offset: Offset(0, 20),
                ),
              ],
            ),
            child: const Icon(
              Icons.mouse,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'همه',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
