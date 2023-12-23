import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfst/3PlaceOrder.dart';

class OrderScreen extends StatelessWidget {
  var item1;
  OrderScreen({super.key, this.item1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Screen!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // as argument is a aray so it recieves data index wise
            Text(Get.arguments[0]),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                //Get.to(PlaceOrder());
                Get.toNamed("\screen2");
              },
              child: Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 2,
                child: const Center(
                    child: Text(
                  "Place Order",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
