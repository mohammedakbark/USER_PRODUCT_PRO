// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardware_pro/sign/signup.dart';
import 'package:hardware_pro/view/ScreenHome.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    String signIn = "lib/assets/signIn.jpeg";
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 20.h),
          Center(
            child: Image.asset(
              signIn,
              scale: 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                      /////validator:
                      //////  if (_emailRegExp.hasMatch(_EmailController.text)) {
                      //////     },
                      controller: emailController,
                      decoration: InputDecoration(
                          //

                          hintText: "Email",
                          hintStyle: const TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontWeight: FontWeight.w900),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontWeight: FontWeight.w900),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "forgot password?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 5.h,
                  width: 30.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: const Color.fromARGB(255, 23, 28, 61),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                            (route) => false);
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.kanit(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "not have an account?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ScreenSignUp()));
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.kanit(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 255, 153, 0),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
