import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white),
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Image.asset(
                    "assets/icons/Vector.png",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 267,
            height: 95,
            margin: const EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: const Center(
              child: Column(
                children: [
                  Text(
                    "Recovery Password",
                    style: TextStyle(fontSize: 28, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Please Enter Your Email Address \n To Recieve a Verification Code",
                    style: TextStyle(
                        fontFamily: 'PermanentMarker',
                        fontSize: 16,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                CustomTextField(
                  icon: Icon(Icons.email),
                  hintText: "Enter Your Email",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: "Contineu",
          ),
        ],
      ),
    );
  }
}
