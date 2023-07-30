import 'package:flutter/material.dart';

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
