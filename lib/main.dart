import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfst/1cartScreen.dart';
import 'package:getxfst/2OrderScreen.dart';
import 'package:getxfst/3PlaceOrder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: CartScreen(),
      getPages: [
        GetPage(name: "/", page: () => CartScreen()),
        GetPage(name: "/screen1", page: () => OrderScreen()),
        GetPage(name: "/screen2", page: () => PlaceOrder()),
      ],
    );
  }
}
