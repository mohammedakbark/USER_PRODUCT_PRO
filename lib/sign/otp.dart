import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardware_pro/sign/signin.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(child: Image.asset("lib/assets/otp.png")),
          Text(
            "OTP Verification",
            style: TextStyle(
                color: const Color.fromARGB(255, 63, 69, 104),
                fontSize: 27.dp,
                fontWeight: FontWeight.w500),
          ),
          Divider(
            indent: 30.w,
            endIndent: 30.w,
            thickness: 2,
            color: const Color.fromARGB(110, 100, 100, 100),
          ),
          const Text("""Enter the verification code that
we just send you!"""),
          SizedBox(
            height: 5.h,
          ),
          Pinput(
            defaultPinTheme: PinTheme(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      width: 3,
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 63, 69, 104),
                    )
                    // border: Border.all(),
                    )),
            // preFilledWidget: SizedBox(
            //   height: 4.5.h,
            //   width: 10.w,
            // ),
            // border: Border.all(),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 5.h,
            width: 30.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: const Color.fromARGB(255, 255, 0, 0)),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const ScreenSignIn()),
                      (route) => false);
                },
                child: Text(
                  "Submit",
                  style: GoogleFonts.kanit(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Text(
            "Resend OTP",
            style: GoogleFonts.kanit(
                fontSize: 14.dp,
                color: const Color.fromARGB(255, 113, 113, 113)),
          )
        ],
      ),
    );
  }
}
