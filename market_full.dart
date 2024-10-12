import 'package:flutter/material.dart';
import 'package:irebe_great/screens/market_empty.dart';
// import 'package:irebe_great/screens/market_db.dart';
import 'package:irebe_great/screens/market_product.dart';
import 'package:irebe_great/screens/marketdatas.dart';
// import 'package:irebe_mall/screens/cart_product.dart';
// import 'package:irebe_mall/screens/datas/cartdatas.dart';
// import 'package:irebe_mall/screens/datas/cart_db.dart';

class FullMarket extends StatefulWidget {
  const FullMarket({super.key});

  @override
  State<FullMarket> createState() => _FullMarketState();
}

class _FullMarketState extends State<FullMarket> {
  @override
  Widget build(BuildContext context) {
    var datas = marketlist;

    return datas.isEmpty
        ? const EmptyMarket()
        : Scaffold(
            body: ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  return const MarketItem();

                  // Dismissible(
                  //   key: ValueKey(marketlist[index]),
                  //   // onDismissed: (value) => widget.cartdeletor(marketlist[index]),
                  //   child: const MarketItem(),
                  // );
                }),
          );
  }
}
