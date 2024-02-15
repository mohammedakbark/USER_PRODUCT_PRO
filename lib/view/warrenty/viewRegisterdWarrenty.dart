import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hardware_pro/view/warrenty/claimWarranty.dart';
import 'package:hardware_pro/view/warrenty/screen_RegisterWarranty.dart';

class ViewRegisterdWarrenty extends StatelessWidget {
  const ViewRegisterdWarrenty({super.key});

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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 27,
                      )),
                  const Text(
                    "Registered\n Products",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 153, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            width: 330,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 243, 243),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 244, 240, 240),
                ),
                boxShadow: const [BoxShadow(blurRadius: 1)]),
            height: 130,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Product name :",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Order no:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Serial no:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: const Color.fromARGB(255, 183, 13, 1))),
                    child: SizedBox(
                      height: 30,
                      width: 165,
                      child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          )),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ClaimWarrenty()));
                          },
                          icon: const Icon(Icons.add,
                              size: 17, color: Color.fromARGB(255, 190, 13, 0)),
                          label: const Text(
                            "claim warranty",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 176, 12, 0)),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 350,
          ),
          SizedBox(
            width: 310,
            height: 50,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 65, 76, 135),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenRegWarranty();
                    },
                  ));
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  "New Product",
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
