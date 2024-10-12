import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:irebe_great/screens/market_db.dart';

class MarketItem extends StatelessWidget {
  const MarketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Container(
        height: 168,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(5),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: Row(
                children: [
                  const Text(
                    "Bitcoin",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.red,
                            size: 22,
                          ),
                          Text(
                            "1%",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Image.network(
                    "https://thumbs.dreamstime.com/z/stock-market-graph-chart-investment-trading-exchange-monitor-screen-close-up-153729160.jpg",
                    height: 300,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Buy",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.show_chart_outlined,
                            color: Colors.green,
                            size: 22,
                          ),
                          Text(
                            "260",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Sell",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.show_chart_outlined,
                            color: Colors.red,
                            size: 22,
                          ),
                          Text(
                            "250",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
