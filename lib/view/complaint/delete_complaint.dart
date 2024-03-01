import 'package:flutter/material.dart';

class ScreenDeleteReg extends StatelessWidget {
  const ScreenDeleteReg({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 230, 224, 224),
                  ),
                  color: const Color.fromARGB(255, 247, 247, 247),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              width: 460,
              // height: 460,
              child: Column(
                children: [
                  Row(
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
                          "BACK",
                          style: TextStyle(
                              color: Color.fromARGB(255, 39, 43, 72),
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Product Name/ID:",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 39, 43, 72)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _mytextBox(width, "name(545647468)"),
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
                        _mytextBox(width, "0000000"),
                        const Text(
                          "Complaint Id",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 39, 43, 72)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        _mytextBox(width, "122222"),
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
                        _mytextBox(width, "12/21/1222"),
                        const Text(
                          "Complainted Date",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 39, 43, 72)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        _mytextBox(width, "12/21/1222"),
                        const Text(
                          "Contact no.",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 39, 43, 72)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        _mytextBox(width, "635672459787698"),
                        const Text(
                          "Complaint",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 39, 43, 72)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        _mytextBox(width, "Complaint\n:-hhsdfkdbfkbskFBskb",
                            size: 13.0)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Status:"),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Ongoing",
                              style: TextStyle(color: Colors.red),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(255, 39, 43, 72),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) {
                    //     return const ScreenNoCompl();
                    //   },
                    // ));
                  },
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Container _mytextBox(width, text, {size}) {
    return Container(
        padding: const EdgeInsets.only(left: 5),
        alignment: Alignment.centerLeft,
        height: 38,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), color: Colors.white),
        child: Text(
          text,
          style: TextStyle(
              fontSize: size ?? 19,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 93, 92, 92)),
        ));
  }
}
