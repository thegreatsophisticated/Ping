import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.green,
              Colors.green,
            ])),
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                label: const Text(
                  "Buy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red,
              Colors.red,
            ])),
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                label: const Text(
                  "Sell",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
