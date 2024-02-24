import 'package:flutter/material.dart';
import 'package:hardware_pro/view/shop/order_successfu.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    String uPI = "lib/assets/UPI.jpeg";
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 235, 232, 232),
                ),
                color: const Color.fromARGB(255, 244, 241, 241),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            width: 450,
            height: 150,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
                const Text(
                  "Payment",
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 83, 126),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Row(
                children: [
                  Radio(
                    value: ValueKey,
                    groupValue: true,
                    onChanged: (value) {},
                  ),
                  const Text("Cash on delivery")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Radio(
                      value: ValueKey,
                      groupValue: true,
                      onChanged: (value) {},
                    ),
                    const Text("Net banking")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Radio(
                      value: ValueKey,
                      groupValue: false,
                      onChanged: (value) {},
                    ),
                    const Text("UPI")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child:
                    SizedBox(height: 150, width: 150, child: Image.asset(uPI)),
              )
            ],
          ),
          const SizedBox(
            height: 450,
          ),
          SizedBox(
            height: 40,
            width: 130,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) =>const ScreenOrderSucsessfull()),
                      (route) => false);
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
