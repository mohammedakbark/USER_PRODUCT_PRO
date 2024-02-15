import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardware_pro/sign/otp.dart';
import 'package:hardware_pro/sign/signin.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    String Login = "lib/assets/LoginAss.jpeg";
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            Login,
            scale: 3.5,
          ),
          const SizedBox(
            height: 30,
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
                    decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Phone",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 5.h,
            width: 30.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: const Color.fromARGB(255, 91, 223, 159)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtpScreen()));
                },
                child: Text(
                  "Confirm",
                  style: GoogleFonts.kanit(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "already have an account?",
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const ScreenSignIn()),
                        (route) => false);
                  },
                  child: Text("Sign in",
                      style: GoogleFonts.davidLibre(
                        fontSize: 18,
                        color: Colors.amber,
                      )))
            ],
          )
        ],
      )),
    );
  }
}
