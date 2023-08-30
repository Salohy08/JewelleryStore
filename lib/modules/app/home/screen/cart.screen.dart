import 'package:flutter/material.dart';
import 'package:flutter_demo_2/config/theme/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        backgroundColor: AppColor.bg,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "My Cart List",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(5, 10),
                            color: Colors.white.withOpacity(0.1))
                      ]),
                      child: Image(
                        image: AssetImage(
                          "assets/images/Bg2.jpg",
                        ),
                        width: 100,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oval Ruby Queen",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "15.55",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 17,
                            )),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 17,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(5, 10),
                            color: Colors.white.withOpacity(0.1))
                      ]),
                      child: Image(
                        image: AssetImage(
                          "assets/images/Bg2.jpg",
                        ),
                        width: 100,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oval Ruby Queen",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "15.55",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 17,
                            )),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 17,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(5, 10),
                            color: Colors.white.withOpacity(0.1))
                      ]),
                      child: Image(
                        image: AssetImage(
                          "assets/images/Bg2.jpg",
                        ),
                        width: 100,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oval Ruby Queen",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "15.55",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 17,
                            )),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 17,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text(
                    "Subtotal",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Spacer(),
                  Text(
                    "44.39",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
