import 'package:flutter/material.dart';
import 'package:flutter_demo_2/config/theme/colors.dart';
import 'package:flutter_demo_2/modules/auth/welcome/screen/login.screen.dart';
import 'package:flutter_demo_2/modules/auth/welcome/screen/register.screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage('assets/images/Bg1.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft,
                    stops: const [
                  0,
                  1
                ],
                    colors: [
                  AppColor.primaryDark.withOpacity(0.1),
                  const Color.fromARGB(255, 0, 0, 0),
                ])),
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    margin: const EdgeInsets.only(top: 100),
                    decoration: const BoxDecoration(
                        color: Color(0xFFAB806D),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10))),
                    child: const Text(
                      "20% OFF",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "The True Definition of",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  const Text("Elegance",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold)),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Crafeted with new age techniques likes Sombre,Rose Gold,Briolette,and Electroform",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  const Expanded(
                    child: Column(children: []),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              )
                            ]),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
