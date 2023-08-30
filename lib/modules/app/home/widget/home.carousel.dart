import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_2/modules/app/home/screen/detail.screen.dart';

import '../../../../config/theme/colors.dart';
import 'Painting.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen()));
              },
              child: Container(
                width: 350,
                // decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.only(left: 10, top: 25),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                          350,
                          (500 * 0.5833333333333334)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image(
                              image: AssetImage("assets/images/Bg4.png"),
                              width: 200),
                        ),
                        Text(
                          "Duo",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        Text(
                          "Gold Ring",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        Text(
                          "Dual diamond couple ring",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "8.200",
                                style: TextStyle(
                                    color: AppColor.primary, fontSize: 30),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: AppColor.primary,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
            height: 370,
            enableInfiniteScroll: false,
            disableCenter: false,
            aspectRatio: 0.7,
            enlargeFactor: 0.3,
            enlargeCenterPage: true,
            initialPage: 0,
            viewportFraction: 0.65,
            autoPlay: false));
  }
}
