import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

class BannerSliderWidget extends StatelessWidget {
  const BannerSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);

    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: controller,
            padEnds: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  color: Colors.red,
                  height: 200,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: const ExpandingDotsEffect(
                expansionFactor: 3,
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.white,
                activeDotColor: MyColors.blue,
              ), // your preferred effect
              onDotClicked: (index) {}),
        )
      ],
    );
  }
}
