import 'package:eminonu_guide/pages/Resturnet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home/Home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eminönü guide',
      home: Home(),
    );
  }
}
