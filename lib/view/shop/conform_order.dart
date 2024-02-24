import 'package:flutter/material.dart';
import 'package:hardware_pro/view/shop/proceedToPay.dart';
import 'package:hardware_pro/view/shop/order_successfu.dart';

class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    String confirm = "lib/assets/confirmorder.jpeg";
    return Scaffold(
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
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 15),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                size: 25,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            "Confirm your",
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 46, 68),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 210,
                      ),
                      child: Text(
                        "Order",
                        style: TextStyle(
                            color: Color.fromARGB(255, 42, 46, 68),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 70),
            child: Image.asset(
              confirm,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 40, top: 25),
            child: Text(
              "Address Name - Firstname Lastname",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.location_pin),
                Padding(
                  padding: EdgeInsets.only(right: 190),
                  child: Text("Address line 1, Area"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: SizedBox(
              height: 20,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 20, 112, 23),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {},
                  child: const Text("SELECTED")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 25),
            child: Row(
              children: [
                const Icon(
                  Icons.currency_rupee,
                  size: 19,
                ),
                const Text(
                  "2,340.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  " TO PAY",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  width: 18,
                ),
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 153, 0)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const ScreenPayment();
                          },
                        ));
                      },
                      child: const Text(
                        "PROCEED TO PAY",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
