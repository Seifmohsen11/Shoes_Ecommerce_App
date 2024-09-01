import 'package:flutter/material.dart';

class BestChoiseCard extends StatelessWidget {
  const BestChoiseCard({
    super.key,
    required this.rating,
    required this.name,
    required this.price,
    required this.image,
  });
  final String rating;
  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(22)),
      height: 135,
      width: 400,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        rating,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff76AEE6),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}
