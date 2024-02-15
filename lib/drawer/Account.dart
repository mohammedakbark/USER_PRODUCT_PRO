import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/drawer/Address.dart';
import 'package:hardware_pro/drawer/profile.dart';


class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
                  "Account",
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 83, 126),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const ScreenProfile();
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 86, 83, 83),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 100, top: 10),
                          child: Icon(
                            CupertinoIcons.person_alt_circle_fill,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, right: 60),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ScreenAddress();
                      },
                    ));
                  },
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 91, 94, 110),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 100, top: 10),
                          child: Icon(
                            CupertinoIcons.location_solid,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50, top: 25),
                          child: Text(
                            "Address",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
