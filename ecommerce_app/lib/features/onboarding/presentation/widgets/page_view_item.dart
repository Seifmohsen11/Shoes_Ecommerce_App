import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.image, this.title, this.subTitle});

  final String? image;
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 122, right: 18),
          child: Container(height: 250, width: 350, child: Image.asset(image!)),
        ),
        SizedBox(height: 80),
        Text(
          title!,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle!,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey),
        ),
      ],
    );
  }
}
