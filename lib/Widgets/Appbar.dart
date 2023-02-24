import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Pages/Search_Page.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const MyAppbar({Key? key, required this.title, this.height: 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.red,
        elevation: 5,
        centerTitle: true,
        title: GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromARGB(255, 165, 4, 1),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 29,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Get.to(() => SearchPage());
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.red[900],
                  child: IconButton(
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 29,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class MyStackAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  const MyStackAppbar({Key? key, required this.title, this.height: 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          iconSize: 40.0,
          icon: const Icon(
            Icons.chevron_left_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
