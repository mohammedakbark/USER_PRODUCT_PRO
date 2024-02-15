import 'package:flutter/material.dart';

class ScreenAddAddress extends StatelessWidget {
  const ScreenAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    String adress = "lib/assets/addaddress.jpeg";
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
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      print("iconbutton pressed");
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
                TextButton(
                  child: const Text(
                    "Back",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 60),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Stack(
            children: [
              const Positioned(
                right: 13,
                top: 40,
                child: Icon(
                  Icons.location_on,
                  shadows: [Shadow(blurRadius: 10, color: Colors.grey)],
                  size: 700,
                  color: Color.fromARGB(255, 229, 228, 228),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 130,
                      right: 130,
                    ),
                    child: Image.asset(adress),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 120,
                    ),
                    child: Text(
                      "Add Address",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 55, right: 60),
                    child: Column(
                      children: [
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Flat/House no.",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "City",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Pincode",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Area/street",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "State",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Landmark",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 225, 225)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Phone",
                                hintStyle:
                                    const TextStyle(fontWeight: FontWeight.bold),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 120,
                    height: 38,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 27, 39, 120),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
