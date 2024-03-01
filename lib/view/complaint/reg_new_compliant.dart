import 'package:flutter/material.dart';
import 'package:hardware_pro/view/complaint/screen_reg_complaints.dart';

class RegNewComplaint extends StatelessWidget {
  const RegNewComplaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 235, 232, 232),
                  ),
                  color: const Color.fromARGB(255, 245, 241, 241),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              // width: 460,
              // height: 460,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 27,
                            )),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "NEW COMPLAINT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 39, 43, 72),
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Product Name:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "abc",
                              hintStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 93, 92, 92)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text(
                        "Product ID:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "24241222",
                              hintStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 93, 92, 92)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text(
                        "Order Number",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 38,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: "0000-0000-0000",
                                hintStyle: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 93, 92, 92)),
                                border: OutlineInputBorder()),
                          ),
                        ),
                      ),
                      const Text(
                        "Purchase Date",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 38,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: "dd/mm/yyyy",
                                hintStyle: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 93, 92, 92)),
                                border: OutlineInputBorder()),
                          ),
                        ),
                      ),
                      const Text(
                        "Contact Number:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "3525345325",
                              hintStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 93, 92, 92)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text(
                        "Complaint:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "hgjhdgk",
                              hintStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 93, 92, 92)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text(
                        "Describe Your Issue:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 39, 43, 72)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 110,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText:
                                  "Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elite.\nAenean commodo ligula eget\ndolor.Aenean massa.Cum sociis\n natoque",
                              hintMaxLines: 5,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 93, 92, 92)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 97,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(255, 240, 144, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const ScreenRegComplaints();
                      },
                    ));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
