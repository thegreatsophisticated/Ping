import 'package:flutter/material.dart';
import 'package:irebe_great/screens/chart.dart';
import 'package:irebe_great/screens/market.dart';
// import 'package:irebe_great/screens/market_empty.dart';
import 'package:irebe_great/screens/market_full.dart';
// import 'package:irebe_great/screens/market_product.dart';
import 'package:irebe_great/screens/userinfo.dart';
// import 'package:irebe_mall/screens/authscreen.dart';
// import 'package:irebe_mall/screens/cartscreen.dart';
// import 'package:irebe_mall/screens/datas/cart_db.dart';
// import 'package:irebe_mall/screens/feedsscreen.dart';
// import 'package:irebe_mall/screens/mallscreen.dart';
// import 'package:irebe_mall/screens/searchscreen.dart';
// import 'package:irebe_mall/screens/datas/cartdatas.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // var _cartdatas = cartlist;
  late List<Map<String, Widget>> _pages;
  int _selectedpageindex = 2;
  @override
  void initState() {
    _pages = [
      {
        'page': const FullMarket(),
      },
      {
        'page': const Market(),
      },
      {
        'page': const Market(),
      },
      {
        'page': const UserInfo(),
      },
      {
        'page': const UserInfo(),
      },
    ];
    super.initState();
  }

  void _selectedpage(int a) {
    setState(() {
      _selectedpageindex = a;
    });
  }

  // void _cartdeletor(CartDb value) {
  //   setState(() {
  //     _cartdatas.remove(value);
  //   });
  // }

  // void _cartupdator(CartDb value, int a) {
  //   int b = value.quantity + a;
  //   setState(() {
  //     _cartdatas.insert(
  //         _cartdatas.indexOf(value),
  //         CartDb(
  //             name: value.name,
  //             quantity: b,
  //             price: value.price,
  //             image: value.image,
  //             category: Category.business));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedpage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        // unselectedItemColor:
        // Theme.of(context).textSelectionTheme.selectionColor,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedpageindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: 'Feeds'),
          BottomNavigationBarItem(
              activeIcon: null, icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
      // ),

      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(8),
      //   child: FloatingActionButton(
      //       // hoverElevation: 10,
      //       // splashColor: Colors.grey,
      //       tooltip: 'Search',
      //       // elevation: 4,
      //       child: const Icon(Icons.search),
      //       onPressed: () => setState(() {
      //             _selectedpageindex = 2;
      //           })),
      // ),
    );
  }
}
