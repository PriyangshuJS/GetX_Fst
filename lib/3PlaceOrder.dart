import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Order!"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                //This makes you go back 2 screens back here i.e, CartScreen
                Get.back();
                Get.back();
              },
              child: Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 2,
                child: const Center(
                  child: Text(
                    "Go Back to Crt Screen",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
