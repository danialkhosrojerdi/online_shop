import 'package:flutter/material.dart';
import 'package:online_shop/constants/colors.dart';
import 'package:online_shop/widgets/banner_slider_widget.dart';
import 'package:online_shop/widgets/category_list_item.dart';
import 'package:online_shop/widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      Image.asset('assets/images/icon_search.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'جستجوی محصولات',
                        style: TextStyle(
                            fontFamily: 'ISB',
                            fontSize: 16,
                            color: MyColors.gery),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/icon_apple_blue.png'),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BannerSliderWidget(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(right: 44, bottom: 20, top: 32),
                child: Text(
                  'دسته بندی',
                  style: TextStyle(
                    fontFamily: 'ISB',
                    color: MyColors.gery,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 44),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      const CategoryHorizontalItemsList(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                child: Row(
                  children: [
                    const Text(
                      'پرفروش ترین ها',
                      style: TextStyle(
                        fontFamily: 'ISB',
                        color: MyColors.gery,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'ISB',
                        color: MyColors.blue,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/icon_left_categroy.png'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 210,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 44),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ProductItem(),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, bottom: 20, top: 32),
                child: Row(
                  children: [
                    const Text(
                      'پربازدید ترین ها',
                      style: TextStyle(
                        fontFamily: 'ISB',
                        color: MyColors.gery,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'ISB',
                        color: MyColors.blue,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/icon_left_categroy.png'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 210,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 44),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ProductItem(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
