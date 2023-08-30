import 'package:flutter/material.dart';
import 'package:flutter_demo_2/config/theme/colors.dart';
import 'package:flutter_demo_2/modules/app/home/screen/cart.screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Premium set",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: RotatedBox(
                        quarterTurns: -1,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "152 reviews",
                                style: TextStyle(
                                    color: AppColor.primary, fontSize: 20),
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.primary,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.primary,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.primary,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.primary,
                            )
                          ],
                        )),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: AppColor.bgBlack,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/Bg4.png"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  "Floral Gold Ring",
                  style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "LIMITED ROYAL EDITION",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "8.200",
                  style: TextStyle(color: AppColor.primary, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget est elementum risus rutrum dapibus. Mauris ullamcorper fringilla dolor vitae ultrices. Nulla facilisi. Quisque accumsan a nulla quis eleifend. Nulla sollicitudin porttitor elit, at aliquet lorem pharetra ut.",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartScreen()));
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.black),
                            Text("Add to bag",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: AppColor.primary,
                        ))
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
