import 'package:ecommerce_app/core/widgets/constsnts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 55,
      width: 340,
      decoration: BoxDecoration(
          color: kMainColor, borderRadius: BorderRadius.circular(28)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
