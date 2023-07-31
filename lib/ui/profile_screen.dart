import 'package:flutter/material.dart';
import 'package:online_shop/widgets/category_list_item.dart';

import '../constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                        'حساب کاربری',
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
            const Text(
              'دانیال خسروجردی',
              style: TextStyle(fontFamily: 'ISB', fontSize: 16),
            ),
            const Text(
              '09127655545',
              style: TextStyle(fontFamily: 'ISM', fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            const Wrap(
              runSpacing: 20,
              children: [
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
                CategoryHorizontalItemsList(),
              ],
            ),
            const Spacer(),
            const Text(
              'فروشگاه آنلاین',
              style: TextStyle(
                fontFamily: 'ISM',
                fontSize: 10,
                color: MyColors.gery,
              ),
            ),
            const Text(
              'v-1.0.00',
              style: TextStyle(
                fontFamily: 'ISM',
                fontSize: 10,
                color: MyColors.gery,
              ),
            ),
            const Text(
              'instagram.com/danial.khosrojerdi',
              style: TextStyle(
                fontFamily: 'ISM',
                fontSize: 10,
                color: MyColors.gery,
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
