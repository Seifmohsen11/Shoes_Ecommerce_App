// import 'package:flutter/material.dart';

// class GoogleButton extends StatelessWidget {
//   const GoogleButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//       width: 340,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(28)),
//       child: Center(
//         child: Text(
//           "Sign in with google",
//           style: TextStyle(
//               fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 55,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/icons/search.png",
            width: 40,
            height: 40,
          ),
          SizedBox(width: 20),
          Text(
            "Sign in with Google",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
