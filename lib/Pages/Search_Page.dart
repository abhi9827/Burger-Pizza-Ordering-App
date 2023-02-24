import 'package:flutter/material.dart';

import '../Widgets/CustomText.dart';
import '../Widgets/Search_items.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: Colors.red,
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.menu_rounded),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Items",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 80,
              child: customTextField(
                Icon: Icon(Icons.search),
                hint: "Search for Burger",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SearchItem(
            isBool: false,
          ),
          SearchItem(
            isBool: false,
          ),
          SearchItem(
            isBool: false,
          ),
          SearchItem(
            isBool: false,
          ),
          SearchItem(
            isBool: false,
          ),
        ],
      ),
    );
  }
}
