import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_2/config/theme/app_input_decoration.dart';
import 'package:flutter_demo_2/config/theme/colors.dart';
import 'package:flutter_demo_2/modules/app/home/screen/home.screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
                  image: AssetImage('assets/images/Bg3.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.bottomLeft,
                    stops: const [
                  0,
                  1
                ],
                    colors: [
                  Colors.white.withOpacity(0.1),
                  const Color.fromARGB(150, 0, 0, 0),
                ])),
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: Text("Please enter the details below to continue",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '\u26A0 Entrez votre email';
                            }
                            return null;
                          },
                          cursorColor: AppColor.primary,
                          style: const TextStyle(fontSize: 18),
                          decoration: AppInputDecoration.textField(
                              hintText: "Email", icon: Icons.email)),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 30),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '\u26A0 Entrez votre mot de passe';
                              }
                              return null;
                            },
                            cursorColor: AppColor.primary,
                            obscureText: true,
                            style: const TextStyle(fontSize: 18),
                            decoration: AppInputDecoration.textField(
                                hintText: "Mot de passe", icon: Icons.lock)),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }
                            },
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 15)),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColor.primary)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Login',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Register",
                          style: const TextStyle(
                              color: AppColor.primary,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Register link tapped");
                            },
                        )
                      ])),
                )
              ]))
        ],
      ),
    );
  }
}
