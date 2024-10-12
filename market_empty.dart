import 'package:flutter/material.dart';

class EmptyMarket extends StatelessWidget {
  const EmptyMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.goodreturns.in/img/2024/10/stock-market-holidays-in-2024-121-1727892640.jpg"),
              )),
            ),
            // Text(
            //   "Your Cart is Empty",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Theme.of(context).textSelectionTheme.selectionColor,
            //     fontSize: 36,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 20),
            // Text(
            //   "Looks like you haven't add any to your cart yet!",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Theme.of(context).textSelectionTheme.selectionColor,
            //     fontSize: 26,
            //     fontWeight: FontWeight.normal,
            //   ),
            // ),
            // const SizedBox(height: 50),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   height: MediaQuery.of(context).size.height * 0.06,
            //   child: FilledButton(
            //     // style: ButtonStyle(alignment: EdgeInsets.symmetric(horizontal: 80)),
            //     onPressed: () {},

            //     child: Text(
            //       "Shop Now",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Theme.of(context).textSelectionTheme.selectionColor,
            //         fontSize: 26,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
