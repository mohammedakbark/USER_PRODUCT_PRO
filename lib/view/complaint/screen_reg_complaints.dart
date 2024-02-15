import 'package:flutter/material.dart';
import 'package:hardware_pro/view/complaint/delete_complaint.dart';
import 'package:hardware_pro/view/complaint/reg_new_compliant.dart';

class ScreenRegComplaints extends StatelessWidget {
  const ScreenRegComplaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              SizedBox(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "   Search",
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 370,
                ),
                child: Icon(
                  Icons.home_filled,
                  size: 40,
                  color: Color.fromARGB(255, 72, 70, 70),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 230, 224, 224),
                    ),
                    color: const Color.fromARGB(255, 215, 215, 183),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                width: 460,
                height: 500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios)),
                        const Text(
                          "Your Complaints",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 37, 40, 58),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const ScreenDeleteReg();
                          },
                        ));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: 300,
                        height: 70,
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                "name",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 140, top: 18),
                              child: Text(
                                "Status:",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 37, 40, 58),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 190, top: 5),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Ongoing",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 140, top: 43),
                              child: Text("date:01/01/2024",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 37, 40, 58),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 270,
            height: 42,
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color.fromARGB(255, 255, 162, 21)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const RegNewComplaint();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.white,
                ),
                label: const Text(
                  "New Complaint",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          )
        ]),
      ),
    );
  }
}
