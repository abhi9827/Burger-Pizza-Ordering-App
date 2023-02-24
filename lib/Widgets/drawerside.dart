import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../Pages/Home/Main_NavigationPage.dart';
import '../Pages/My_Profile.dart';
import '../Review/Reviewcart_Page.dart';

class Drawerside extends StatelessWidget {
  Widget listTile({
    IconData? icon,
    String? title,
    ontap,
  }) {
    return ListTile(
      onTap: ontap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.red,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 44,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('Assets/images/Burger.jpg'),
                        backgroundColor: Colors.yellow,
                        radius: 38,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(" Welcome Name")],
                    )
                  ],
                ),
              ),
              listTile(
                  icon: Icons.home_outlined,
                  title: "Home",
                  ontap: () {
                    Get.to(() => MainPage(),
                        transition: Transition.leftToRight);
                  }),
              listTile(
                  icon: Icons.card_travel_outlined,
                  title: "Review Cart",
                  ontap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Reviewcart()));
                  }),
              listTile(
                  icon: Icons.person_2_outlined,
                  title: "My Profile",
                  ontap: () {
                    Get.to(() => MyProfile(),
                        transition: Transition.leftToRight);
                  }),
              listTile(
                  icon: Icons.notifications_outlined,
                  title: "Notification",
                  ontap: () {}),
              listTile(
                  icon: Icons.star_outline,
                  title: "Rating & Review",
                  ontap: () {}),
              listTile(
                  icon: Icons.favorite_border_outlined,
                  title: "Wishlist",
                  ontap: () {}),
              listTile(
                  icon: Icons.format_paint_outlined,
                  title: "FAQs",
                  ontap: () {}),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Support",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Mail us:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("abhilamixane1@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
