import 'package:flutter/material.dart';
import 'package:hardware_pro/Model/cartmodel.dart';
import 'package:hardware_pro/Model/productmodel.dart';
import 'package:hardware_pro/View%20Model/firestore_database.dart';
import 'package:hardware_pro/view/shop/mycart.dart';
import 'package:hardware_pro/deleted.dart/confirm_order.dart';
import 'package:hardware_pro/utils/widget.dart';
import 'package:provider/provider.dart';

class SelectedProDetailPage extends StatelessWidget {
  ProductModel productModel;
  // String productName;
  // String price;
  // String prodcutDescription;
  // String productfeature;
  // String offer;
  // String category;
  // String productImage;
  SelectedProDetailPage({super.key, required this.productModel
      // required this.category,
      // required this.offer,
      // required this.price,
      // required this.prodcutDescription,
      // required this.productImage,
      // required this.productName,
      // required this.productfeature

      });

  @override
  Widget build(BuildContext context) {
    String Pipine = "lib/assets/piiiipiit.jpeg";
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            ),
            Container(
                width: width,
                height: height * .9,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 246, 244, 244),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 241, 241),
                            borderRadius: BorderRadius.circular(15)),
                        width: 350,
                        height: 280,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 270, top: 10),
                              child: Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "${productModel.offer}% OFF",
                                  style: const TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            SizedBox(
                                height: 150,
                                width: 150,
                                child:
                                    Image.network(productModel.productImage)),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  productModel.productName.toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 186, 184, 184),
                                      ),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(255, 186, 184, 184),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.currency_rupee,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Text(
                            productModel.price.toString(),
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          productModel.prodcutDescription.toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Features",
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 370,
                      height: 120,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 192, 189, 163),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Text(
                          productModel.prodcutDescription,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29, left: 80),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 120,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                onPressed: () {
                                  buy(context);
                                },
                                child: const Text(
                                  "BUY",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Consumer<FirestoreDatabase>(
                              builder: (context, firestore, child) {
                            return SizedBox(
                              height: 35,
                              width: 120,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () async {
                                    await firestore
                                        .addToCart(
                                            CartModel(
                                                productModel: productModel,
                                                quantity: 1,
                                                totalAmount:
                                                    productModel.price),
                                            productModel.productId)
                                        .then((value) {
                                      showSuccessMessage(
                                          context, "add to your cart");
                                    });
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //   builder: (context) {
                                    //     return const MyCartScreen();
                                    //   },
                                    // ));
                                  },
                                  child: const Text(
                                    "ADD TO BAG",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

buy(context) {
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
                    onPressed: () {},
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
                          return const MyCartScreen();
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
