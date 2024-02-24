import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hardware_pro/View%20Model/controller.dart';
import 'package:hardware_pro/View%20Model/firestore_database.dart';
import 'package:hardware_pro/firebase_options.dart';

import 'package:hardware_pro/view/warrenty/splashScreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screentype) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<FirestoreDatabase>(create: (context) => FirestoreDatabase(),),
          ChangeNotifierProvider<Controller>(create: (context) => Controller(),)
        ],
        child: MaterialApp(
          
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen()),
      );
    });
  }
}
