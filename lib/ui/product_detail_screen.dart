import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
                          'آیفون',
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
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'آیفون 2022 SE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'ISB', fontSize: 16),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(15),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  'assets/images/icon_favorite_deactive.png'),
                              const Spacer(),
                              SizedBox(
                                height: double.infinity,
                                child: Image.asset('assets/images/iphone.png'),
                              ),
                              const Spacer(),
                              const Text(
                                '4.6',
                                style: TextStyle(
                                  fontFamily: 'ISM',
                                  fontSize: 12,
                                ),
                              ),
                              Image.asset('assets/images/icon_star.png'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 44),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: MyColors.gery,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/iphone.png',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('انتخاب رنگ'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('انتخاب حافظه داخلی'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(8),
                            border: Border.all(width: 1, color: MyColors.gery),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Center(
                              child: Text(
                                '128',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(8),
                            border: Border.all(width: 1, color: MyColors.gery),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Center(
                              child: Text(
                                '128',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(8),
                            border: Border.all(width: 1, color: MyColors.gery),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Center(
                              child: Text(
                                '128',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  top: 24,
                ),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: MyColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text('مشخصات فنی :'),
                    const Spacer(),
                    const Text(
                      'مشاهده',
                      style: TextStyle(color: MyColors.blue),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  top: 24,
                ),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: MyColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text('توضیحات محصول :'),
                    const Spacer(),
                    const Text(
                      'مشاهده',
                      style: TextStyle(color: MyColors.blue),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  top: 24,
                ),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: MyColors.gery,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text('نظرات کاربران :'),
                    const Spacer(),
                    const Text(
                      'مشاهده',
                      style: TextStyle(color: MyColors.blue),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
