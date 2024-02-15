import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hardware_pro/view/warrenty/success_reg_warre.dart';

class ScreenRegWarranty extends StatelessWidget {
  const ScreenRegWarranty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                        padding: const EdgeInsets.only(top: 40),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 210,
                    ),
                    child: Text(
                      "Warranty",
                      style: TextStyle(
                          color: Colors.orange[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 220),
          child: Text(
            "Full Name:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "name",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 260),
          child: Text(
            "Email",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "abc@example.com",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 180),
          child: Text(
            "Mobile Number",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "phone",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 140),
          child: Text(
            "Choose Your Product",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Product Name",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 180),
          child: Text(
            "Order Number",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "0000-0000-0000",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 180),
          child: Text(
            "Serial Number",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "0000-0000-0000",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 180),
          child: Text(
            "Purchased Date",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "dd/mm/yyyy",
                  hintStyle: const TextStyle(fontSize: 19),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color.fromARGB(255, 55, 64, 109)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const SuccessfulRegistrationWarrenty();
                  },
                ));
              },
              child: const Text(
                "Confirm",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        )
      ]),
    );
  }
}
