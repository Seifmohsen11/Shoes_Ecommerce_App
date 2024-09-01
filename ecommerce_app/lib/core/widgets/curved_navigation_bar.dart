import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class curvedNavigationBar extends StatelessWidget {
  const curvedNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color.fromARGB(255, 237, 241, 247),
      items: <Widget>[
        Icon(
          Icons.home_rounded,
          size: 40,
          color: Color(0xff76AEE6),
        ),
        Icon(
          Icons.favorite,
          size: 40,
          color: Color(0xff76AEE6),
        ),
        Icon(
          Icons.shopping_bag,
          size: 40,
          color: Color(0xff76AEE6),
        ),
        Icon(
          Icons.notifications,
          size: 40,
          color: Color(0xff76AEE6),
        ),
        Icon(
          Icons.person,
          size: 40,
          color: Color(0xff76AEE6),
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
