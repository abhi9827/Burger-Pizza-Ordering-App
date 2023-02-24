import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'Pages/Home/Splash_Screen.dart';
import 'Provider/Product_Provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Ordering App',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: Splashscreen()),
    );
  }
}
