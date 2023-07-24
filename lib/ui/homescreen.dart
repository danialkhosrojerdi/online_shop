import 'package:flutter/material.dart';
import 'package:online_shop/widgets/banner_slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BannerSliderWidget(),
          ],
        ),
      ),
    );
  }
}
