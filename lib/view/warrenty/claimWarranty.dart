import 'package:flutter/material.dart';
import 'package:hardware_pro/Model/warrenty_model.dart';
import 'package:hardware_pro/view/warrenty/screen_RegisterWarranty.dart';
import 'package:hardware_pro/view/warrenty/viewRegisterdWarrenty.dart';

class ClaimWarrenty extends StatelessWidget {
  RegisterWarrentyModel registerWarrentyModel;
  ClaimWarrenty({super.key, required this.registerWarrentyModel});

  @override
  Widget build(BuildContext context) {
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
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
                const Text(
                  "Claim warranty",
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 83, 126),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
            height: 115,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product name : ${registerWarrentyModel.name.toUpperCase()}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 83, 126),
                    ),
                  ),
                  Text(
                    "Order no: ${registerWarrentyModel.orderId} ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 83, 126),
                    ),
                  ),
                  Text(
                    "Serial no:  ${registerWarrentyModel.srialnumber}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 83, 126),
                    ),
                  ),
                  Text(
                    "Warranty no:  ${registerWarrentyModel.warrentyId}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 83, 126),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 70),
            child: Row(
              children: [
                Container(
                  width: 130,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black)),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      onPressed: () {},
                      child: const Text(
                        "Claim",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 130,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black)),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 200,
            ),
          ),
          SizedBox(
            width: 310,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 42, 46, 69),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => ViewRegisterdWarrenty()));
                },
                child: const Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
