import 'package:ecommerce_app/core/widgets/constsnts.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:ecommerce_app/features/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:ecommerce_app/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 30,
          top: 690,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
          right: 20,
          top: 680,
          child: GestureDetector(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              }
            },
            child: Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                  color: kMainColor, borderRadius: BorderRadius.circular(45)),
              child: Center(
                child: Text(
                  pageController!.hasClients
                      ? (pageController?.page == 2 ? "Get Started" : "Next")
                      : "Next",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
