import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScreenColor,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Text(
                              textAlign: TextAlign.center,
                              'سبد خرید',
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
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => const CartItem(),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 60))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 10),
              child: SizedBox(
                height: 44,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text('ادامه فرآیند خرید'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/iphone.png'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('123456'),
                        const Text('123456'),
                        Row(
                          children: [
                            const Text('49,800,000 تومان'),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 6,
                                ),
                                child: Text(
                                  '%3',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'ISB',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Wrap(
                          children: [
                            OptionChip(),
                            OptionChip(),
                            OptionChip(),
                            OptionChip(),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('48,800,000'),
                SizedBox(width: 5),
                Text('تومان'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OptionChip extends StatelessWidget {
  const OptionChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.gery,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('256'),
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/icon_options.png')
          ],
        ),
      ),
    );
  }
}
