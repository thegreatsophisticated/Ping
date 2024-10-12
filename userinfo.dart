import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irebe_great/screens/edit_profile.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  editmodal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const EditProfile(),
    );
  }

  // addproduct() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (ctx) => const MallInsert(),
  //   );
  // }

  bool _lightDarkmodevalue = false;
  final List _lightDarkmodeicon = [
    Icons.dark_mode_outlined,
    Icons.light_mode_outlined,
  ];
  final List _lightDarkmodename = ["Dark Mode", "Light Mode"];
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("hello"),
      //   centerTitle: true,
      //   toolbarHeight: 250,
      //   backgroundColor: Colors.red,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Profile"),
                IconButton(onPressed: editmodal, icon: const Icon(Icons.edit))
              ],
            ),
            // centerTitle: true,
            expandedHeight: 250,
            // backgroundColor: Colors.red,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Titleheader(title: "User Bags"),
                    const Divider(thickness: 1, color: Colors.grey),
                    const Bagstiles(icon: Icons.shopping_cart, title: "Cart"),
                    const Bagstiles(
                        icon: Icons.heart_broken_sharp, title: "Wish list"),
                    const Bagstiles(
                        icon: Icons.shopping_bag_rounded, title: "My orders"),
                    const Titleheader(title: "User information"),
                    const Divider(thickness: 1, color: Colors.grey),
                    Userlisttile(
                      icon: Icons.email,
                      title: "Email",
                      value: "niyitanga7@gmail.com",
                      clicked: () {},
                    ),
                    Userlisttile(
                      icon: Icons.phone,
                      title: "Telephone",
                      value: "0781625316",
                      clicked: () {},
                    ),
                    const Titleheader(title: "User Settings"),
                    const Divider(thickness: 1, color: Colors.grey),
                    SwitchListTile(
                      value: _lightDarkmodevalue,
                      // value: themeChange.darktheme,

                      onChanged: (value) {
                        setState(() {
                          _lightDarkmodevalue = value;
                          a = value == true ? 1 : 0;
                          // themeChange.darktheme = value;
                        });
                      },
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(_lightDarkmodeicon[a]),
                          Text(_lightDarkmodename[a])
                        ],
                      ),
                    ),
                    Userlisttile(
                      icon: Icons.exit_to_app,
                      title: "Log-Out",
                      value: "Niyitanga Jean",
                      clicked: () {
                        FirebaseAuth.instance.signOut();
                      },
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      // floatingActionButton: IconButton(
      //   onPressed: addproduct,
      //   icon: const Icon(
      //     Icons.add_shopping_cart_sharp,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}

class Bagstiles extends StatelessWidget {
  const Bagstiles({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {},
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          leading: Icon(icon),
        ),
      ),
    );
  }
}

class Titleheader extends StatelessWidget {
  const Titleheader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Userlisttile extends StatelessWidget {
  const Userlisttile(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.clicked});
  final IconData icon;
  final String title;
  final String value;
  final void Function() clicked;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {
            return clicked();
          },
          title: Text(title),
          leading: Icon(icon),
          subtitle: Text(value),
        ),
      ),
    );
  }
}
