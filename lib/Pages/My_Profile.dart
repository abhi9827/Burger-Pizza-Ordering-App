import 'package:flutter/material.dart';

import '../Widgets/drawerside.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget listTile({IconData? icon, String? title}) {
    return Column(
      children: [
        Divider(
          height: 2,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title!),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawerside(),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Container(
              height: 600,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 250,
                        height: 80,
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "User Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("abhishdbn@gmail.com")
                              ],
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.blueGrey,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.edit),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  listTile(icon: Icons.shop_outlined, title: "My Orders"),
                  listTile(
                      icon: Icons.location_on_outlined,
                      title: "My Delivery Address"),
                  listTile(
                      icon: Icons.person_4_outlined, title: "Reffer A Friends"),
                  listTile(
                      icon: Icons.file_copy_outlined,
                      title: "Terms & Conditions"),
                  listTile(icon: Icons.add_card_outlined, title: "Add Carts"),
                  listTile(icon: Icons.exit_to_app_outlined, title: "Log Out"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey,
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/Burger.jpg'),
                radius: 45,
              ),
            ),
          )
        ],
      ),
    );
  }
}
