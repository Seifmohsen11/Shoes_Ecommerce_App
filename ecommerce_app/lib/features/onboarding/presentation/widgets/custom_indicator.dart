import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/widgets/constsnts.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.dotIndex,
  });
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      decorator: DotsDecorator(
          activeColor: kMainColor,
          size: Size.square(9),
          activeSize: Size(60, 9),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
