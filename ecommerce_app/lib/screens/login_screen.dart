import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_password_field.dart';
import 'package:ecommerce_app/core/widgets/custom_textField.dart';
import 'package:ecommerce_app/core/widgets/google_button.dart';
import 'package:ecommerce_app/screens/forget_password_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

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
            height: 65,
            margin: const EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: const Center(
              child: Column(
                children: [
                  Text(
                    "Hello Again!",
                    style: TextStyle(fontSize: 28, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ]),
                  ),
                  Text(
                    "Welcome Back You've Been Missed!",
                    style: TextStyle(
                        fontFamily: 'PermanentMarker',
                        fontSize: 12,
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
          Container(
            height: 90,
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                CustomPasswordField(
                  hintText: "Enter Your Password",
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen()));
                  },
                  child: Text(
                    "Recovery Password",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: CustomButton(
              text: "Sign In",
            ),
          ),
          SizedBox(
            height: 25,
          ),
          GoogleButton(),
          SizedBox(
            height: 80,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account?",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    " Sign Up For Free",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
