import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/View%20Model/controller.dart';
import 'package:hardware_pro/View%20Model/firestore_database.dart';
import 'package:hardware_pro/View%20Model/shop/conform_order.dart';
import 'package:hardware_pro/utils/widget.dart';
import 'package:provider/provider.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String pipiiit = "lib/assets/piiiipiit.jpeg";
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              const Text(
                "My cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          Expanded(
            child: Consumer<FirestoreDatabase>(
                builder: (context, firestore, child) {
              return FutureBuilder(
                  future: firestore.fetchCartProduct(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return showIndicator();
                    }
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            width: width,
                            height: height * .12,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 244, 241, 241),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(firestore
                                          .cartmodelList[index]
                                          .productModel
                                          .productImage)),
                                ),
                                Column(
                                  children: [
                                    Text(firestore.cartmodelList[index]
                                        .productModel.productName),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.currency_rupee,
                                          size: 17,
                                        ),
                                        Text(
                                          firestore.cartmodelList[index]
                                              .productModel.price
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Consumer<Controller>(
                                        builder: (context, controller, child) {
                                      return Align(
                                        alignment: Alignment.bottomRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // mainAxisSize: MainAxisSize.min,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.decrementCounter(
                                                  firestore.cartmodelList[index]
                                                      .productModel.price
                                                      .toInt(),
                                                  firestore.cartmodelList[index]
                                                      .quantity,
                                                );
                                              },
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: controller
                                                          .isRemoveIconPressed
                                                      ? const Color(0xCCB7A6FC)
                                                      : const Color.fromARGB(
                                                          255, 142, 140, 140),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                                child: const Icon(Icons.remove,
                                                    size: 10),
                                              ),
                                            ),
                                            // const SizedBox(width: 30),
                                            Container(
                                              alignment: Alignment.center,
                                              color: Colors.white,
                                              height: 20,
                                              width: 30,
                                              child: Text(
                                                firestore.cartmodelList[index]
                                                    .quantity
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            // const SizedBox(width: 30),
                                            GestureDetector(
                                              onTap: () {
                                                controller.incrementCounter(
                                                  10,
                                                  firestore.cartmodelList[index]
                                                      .quantity,
                                                  firestore.cartmodelList[index]
                                                      .productModel.price
                                                      .toInt(),
                                                );
                                              },
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: controller
                                                          .isAddIconPressed
                                                      ? const Color(0xCCB7A6FC)
                                                      : const Color.fromARGB(
                                                          255, 142, 140, 140),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                                child: const Icon(Icons.add,
                                                    size: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Delete Button
                                      showModalBottomSheet(
                                        shape: const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(25),
                                                topRight: Radius.circular(25))),
                                        backgroundColor: const Color.fromARGB(
                                            255, 244, 241, 241),
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
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 50,
                                                              top: 30),
                                                      child: SizedBox(
                                                        width: 140,
                                                        height: 45,
                                                        child: OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        148,
                                                                        11,
                                                                        1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30))),
                                                            onPressed: () {},
                                                            child: const Text(
                                                              "YES",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30,
                                                              top: 30),
                                                      child: SizedBox(
                                                        width: 140,
                                                        height: 45,
                                                        child: OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        28,
                                                                        30,
                                                                        43),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30))),
                                                            onPressed: () {},
                                                            child: const Text(
                                                              "NO",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
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
                                    ))
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        itemCount: 2);
                  });
            }),
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
          const SizedBox(
            height: 50,
          )
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