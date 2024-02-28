import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hardware_pro/Model/cartmodel.dart';

class ScreenOrdersStatus extends StatelessWidget {
  List<CartModel> cartList;
  ScreenOrdersStatus({super.key, required this.cartList});

  @override
  Widget build(BuildContext context) {
    String pipiiit = "lib/assets/piiiipiit.jpeg";
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
            child: Row(
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
                    "Orders",
                    style: TextStyle(
                        color: Color.fromARGB(255, 42, 46, 68),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 370,
                    height: 110,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 241, 241),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 15, right: 30),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(pipiiit)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 20),
                          child: Column(
                            children: [
                              const Text("CUFF HEALTH FAUCET"),
                              const Padding(
                                padding: EdgeInsets.only(left: 80, top: 6),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 17,
                                    ),
                                    Text(
                                      "2,340.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 55),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border:
                                              Border.all(color: Colors.black)),
                                      width: 141,
                                      height: 25,
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          onPressed: () {},
                                          child: const Row(
                                            children: [
                                              Text(
                                                "status:",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Processing",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 51, 128, 53)),
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 74,
                                    height: 25,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          onPressed: () {},
                                          child: const Row(
                                            children: [
                                              Text(
                                                "cancel",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0)),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: cartList.length),
          )
        ],
      ),
    );
  }
}
