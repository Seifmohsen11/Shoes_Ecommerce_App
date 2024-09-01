import 'package:ecommerce_app/features/onboarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(controller: pageController, children: [
      Padding(
        padding: EdgeInsets.only(left: 16, top: 22),
        child: PageViewItem(
          image: "assets/images/shoes1.png",
          title: "Start Journey With Nike",
          subTitle: "Smart, Gorgeous & Fashionable Collection",
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 22),
        child: PageViewItem(
          image: "assets/images/shoes2.png",
          title: "Follow Latest Style Shoes",
          subTitle:
              "There Are Many Beautiful And Attractive Plants To Your Room",
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 22),
        child: PageViewItem(
            image: "assets/images/shoes3.png",
            title: "Discounts on your order",
            subTitle: "Get Discounts Of Up To 50% On All Your Orders"),
      ),
    ]);
  }
}
