import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(child: Container()),
              Image.asset('assets/images/iphone.png'),
              Positioned(
                top: 0,
                right: 10,
                child: Image.asset(
                  'assets/images/active_fav_product.png',
                  height: 20,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
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
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'آیفون 13 پرومکس',
            style: TextStyle(
              fontFamily: 'ISM',
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Container(
            height: 53,
            decoration: const BoxDecoration(
              color: MyColors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: MyColors.blue,
                  blurRadius: 25,
                  spreadRadius: -12,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/icon_right_arrow_cricle.png',
                    height: 24,
                  ),
                  const Spacer(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '49,800,000',
                        style: TextStyle(
                          fontFamily: 'ISM',
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 3,
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '48,800,000',
                        style: TextStyle(
                          fontFamily: 'ISM',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'تومان',
                    style: TextStyle(
                      fontFamily: 'ISM',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
