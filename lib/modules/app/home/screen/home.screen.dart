import 'package:flutter/material.dart';
import 'package:flutter_demo_2/config/theme/app_input_decoration.dart';
import 'package:flutter_demo_2/config/theme/colors.dart';
import 'package:flutter_demo_2/modules/app/home/widget/home.carousel.dart';

import '../widget/Painting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        title: const Text(
          "Hello,Suzan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColor.bg,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('demo')));
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 35),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shop your  fashion",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: TextFormField(
                    style: TextStyle(fontSize: 18),
                    decoration: AppInputDecoration.textField(
                      hintText: "Search your type",
                      icon: Icons.search,
                      iconColor: Colors.white,
                      fillColor: AppColor.bgBlack,
                    )),
              ),
              HomeCarousel(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wedding Range",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    Text(
                      "Crafted withnew-age techniques like Ombre/Rose Gold",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        width: 175,
                        height: 150,
                        margin: const EdgeInsets.only(top: 40, right: 20),
                        decoration: BoxDecoration(
                            color: AppColor.bgBlack,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage("assets/images/Bg4.png"),
                                width: 150),
                            Text(
                              "Platinum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        )),
                    Container(
                        width: 175,
                        height: 150,
                        margin: const EdgeInsets.only(top: 40, right: 20),
                        decoration: BoxDecoration(
                            color: AppColor.bgBlack,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage("assets/images/Bg4.png"),
                                width: 150),
                            Text(
                              "Platinum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        )),
                    Container(
                        width: 175,
                        height: 150,
                        margin: const EdgeInsets.only(top: 40, right: 20),
                        decoration: BoxDecoration(
                            color: AppColor.bgBlack,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage("assets/images/Bg4.png"),
                                width: 150),
                            Text(
                              "Platinum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        )),
                    Container(
                        width: 175,
                        height: 150,
                        margin: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: AppColor.bgBlack,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage("assets/images/Bg4.png"),
                                width: 150),
                            Text(
                              "Platinum",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
