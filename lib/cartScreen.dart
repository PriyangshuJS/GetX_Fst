import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartItem(itemName: "Item 1"),
            SizedBox(height: 16),
            CartItem(itemName: "Item 2"),
          ],
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
      height: MediaQuery.of(context).size.height / 4,
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
