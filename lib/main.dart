import 'package:flutter/material.dart';
import 'package:flutter_demo_2/modules/app/home/screen/cart.screen.dart';
import 'package:flutter_demo_2/modules/app/home/screen/detail.screen.dart';
import 'package:flutter_demo_2/modules/app/home/screen/home.screen.dart';
import 'package:flutter_demo_2/modules/app/home/screen/testAr.screen.dart';
import 'package:flutter_demo_2/modules/auth/welcome/screen/login.screen.dart';
import 'package:flutter_demo_2/modules/auth/welcome/screen/register.screen.dart';
import 'package:flutter_demo_2/modules/auth/welcome/screen/welcome.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MinionPro',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TestArScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
