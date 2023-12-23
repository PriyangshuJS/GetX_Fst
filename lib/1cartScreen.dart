import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfst/2OrderScreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 10),
              const CartItem(itemName: "Item 1"),
              const SizedBox(height: 10),
              const CartItem(itemName: "Item 2"),
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              GestureDetector(
                onTap: () {
                  // Get.to(OrderScreen(item1: "Mac Book"));  // ---This works normally below is routing -
                  Get.toNamed("\screen1", arguments: ["Mac Book"]);
                },
                child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Center(
                      child: Text(
                    "Go to Order Screen",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String itemName;

  const CartItem({Key? key, required this.itemName}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${widget.itemName} - ",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 3),
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.add_circle,
              color: Colors.red,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.remove_circle,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
