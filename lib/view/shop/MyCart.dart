import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/view/shop/conform_order.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pipiiit = "lib/assets/piiiipiit.jpeg";
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 600,
            height: 100,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                const Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Text(
                    "My cart",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
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
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                            padding: const EdgeInsets.only(left: 85),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              width: 103,
                              height: 35,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: const Padding(
                                          padding: EdgeInsets.only(right: 40),
                                          child: Icon(
                                            CupertinoIcons.minus,
                                            color: Colors.deepOrange,
                                            size: 10,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 35, top: 5),
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 37,
                                        ),
                                        child: TextButton(
                                          child: const Icon(
                                            Icons.add,
                                            size: 16,
                                            color: Colors.deepOrange,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 320, top: 30),
                  child: IconButton(
                      onPressed: () {
                        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Delete Button
                        showModalBottomSheet(
                          shape: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                          backgroundColor:
                              const Color.fromARGB(255, 244, 241, 241),
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 150,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Do you want to remove item?",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 50, top: 30),
                                        child: SizedBox(
                                          width: 140,
                                          height: 45,
                                          child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 148, 11, 1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30))),
                                              onPressed: () {},
                                              child: const Text(
                                                "YES",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 30),
                                        child: SizedBox(
                                          width: 140,
                                          height: 45,
                                          child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 28, 30, 43),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30))),
                                              onPressed: () {},
                                              child: const Text(
                                                "NO",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 40,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 500,
          ),
          const Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                "Total",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 220,
              ),
              Icon(Icons.currency_rupee, size: 16, color: Colors.deepOrange),
              Text(
                "2,340.00",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 350,
            height: 48,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {
                  buyNow(context);
                },
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}

buyNow(context) {
  showModalBottomSheet(
    shape: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
    backgroundColor: const Color.fromARGB(255, 244, 241, 241),
    context: context,
    builder: (context) {
      return SizedBox(
        height: 250,
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "   Select Delivery Address",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const MyCartScreen();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "ADD NEW",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 110, top: 20),
              child: Text(
                "Address Name - Firstname Lastname",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on),
                Text("Address line 1, Area")
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 25,
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(right: 240),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 69, 207, 71)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const ConfirmOrderPage();
                        },
                      ));
                    },
                    child: const Text(
                      "SELECTED",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                "Address Name - Firstname Lastname",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on),
                Text("Address line 1, Area")
              ],
            ),
          ],
        ),
      );
    },
  );
}




//////////////////////////>>>>>>>>>>>>>>>>   ORDERS     <<<<<<<<<<<<<<<<<<<<<
    // Container(
    //               height: 30,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20),
    //                   border: Border.all(color: Colors.black)),
    //               child: OutlinedButton(
    //                   style: OutlinedButton.styleFrom(
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(20))),
    //                   onPressed: () {},
    //                   child: Text(
    //                     "Orders",
    //                     style: TextStyle(color: Colors.black),
    //                   )),
    //             )