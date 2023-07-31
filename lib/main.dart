import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:online_shop/ui/category_screen.dart';
import 'package:online_shop/ui/homescreen.dart';
import 'package:online_shop/ui/product_detail_screen.dart';
import 'package:online_shop/ui/profile_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int selecetBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      locale: const Locale("fa", "IR"),
      theme: ThemeData(
        fontFamily: 'ISM',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontFamily: 'ISB',
            fontSize: 12,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: selecetBottomNavigationIndex,
          children: getScreens(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: BottomNavigationBar(
              onTap: (int index) {
                setState(() {
                  selecetBottomNavigationIndex = index;
                });
              },
              currentIndex: selecetBottomNavigationIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                fontFamily: 'ISB',
                fontSize: 10,
                color: MyColors.blue,
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'ISB',
                fontSize: 10,
                color: MyColors.gery,
              ),
              items: [
                BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/icon_home_active.png'),
                  icon: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.blue,
                          blurRadius: 20,
                          spreadRadius: -7,
                          offset: Offset(0, 13),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/icon_home.png'),
                  ),
                  label: 'خانه',
                ),
                BottomNavigationBarItem(
                  activeIcon:
                      Image.asset('assets/images/icon_category_active.png'),
                  icon: Image.asset('assets/images/icon_category.png'),
                  label: 'دسته بندی',
                ),
                BottomNavigationBarItem(
                  activeIcon:
                      Image.asset('assets/images/icon_basket_active.png'),
                  icon: Image.asset('assets/images/icon_basket.png'),
                  label: 'سبد خرید',
                ),
                BottomNavigationBarItem(
                  activeIcon:
                      Image.asset('assets/images/icon_profile_active.png'),
                  icon: Image.asset('assets/images/icon_profile.png'),
                  label: 'حساب کاربری',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreens() {
    return <Widget>[
      const HomeScreen(),
      const CategotyScreen(),
      const ProductDetailScreen(),
      const ProfileScreen(),
    ];
  }
}
