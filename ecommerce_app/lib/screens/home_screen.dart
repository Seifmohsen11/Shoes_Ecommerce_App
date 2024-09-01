import 'package:ecommerce_app/core/widgets/best_choise_card.dart';
import 'package:ecommerce_app/core/widgets/curved_navigation_bar.dart';
import 'package:ecommerce_app/core/widgets/item_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 241, 247),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Image.asset(
                      "assets/icons/Icon.png",
                      height: 55,
                      width: 55,
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text("Store Location"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/location.png",
                                height: 30,
                                width: 30,
                              ),
                              const Text(
                                "Mondolibug, Sylhet",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                    ),
                    child: Image.asset(
                      "assets/icons/Frame 31.png",
                      height: 55,
                      width: 55,
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Image.asset("assets/icons/SearchIcon.png"),
                hintText: "Looking for shoes",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      showCheckmark: false,
                      label: Text(index == 0
                          ? "Nike"
                          : index == 1
                              ? "Puma"
                              : index == 2
                                  ? "Under Armour"
                                  : index == 3
                                      ? "Adidas"
                                      : "Converse"),
                      selected: selectedChipIndex == index,
                      selectedColor: const Color(0xff76AEE6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      avatar: Image.asset(
                        "assets/icons/${index == 0 ? 'Nike' : index == 1 ? 'Puma' : index == 2 ? 'UnderUrmour' : index == 3 ? 'Adidas' : 'Converse'}.png",
                        height: 15,
                        width: 30,
                      ),
                      onSelected: (value) {
                        setState(() {
                          selectedChipIndex = value ? index : -1;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 230,
              width: double.infinity,
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          "Popular Shoes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          "See all",
                          style: TextStyle(
                            color: Color(0xff76AEE6),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemCard(
                          image: "assets/images/NikeShoes2.png",
                          rating: "BEST SELLER",
                          name: "Nike Jordan",
                          price: "493.00"),
                      SizedBox(
                        width: 30,
                      ),
                      ItemCard(
                          image: "assets/images/NikeShoes.png",
                          rating: "BEST SELLER",
                          name: "Nike Air Max",
                          price: "897.99"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    "New Arrivals",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff76AEE6),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            BestChoiseCard(
                rating: "BEST CHOISE",
                name: "Nike Air Jordan",
                price: "849.69",
                image: "assets/images/Nikeshoes3.png")
          ],
        ),
      ),
      bottomNavigationBar: const curvedNavigationBar(),
    );
  }
}
