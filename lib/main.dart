import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hardware_pro/my_order_status.dart';
import 'package:hardware_pro/claim_warrenty_request_submited.dart';
import 'package:hardware_pro/sign/lets_go.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context,orientation,screentype) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LetsGo());
    });
  }
}
