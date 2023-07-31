import 'package:flutter/material.dart';
import 'package:online_shop/widgets/product_item.dart';

import '../constants/colors.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScreenColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, bottom: 32, top: 20),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      Image.asset('assets/images/icon_back.png'),
                      const Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          'پرفروش ترین ها',
                          style: TextStyle(
                            fontFamily: 'ISB',
                            fontSize: 16,
                            color: MyColors.blue,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/icon_apple_blue.png'),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => const ProductItem(),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2 / 2.8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
