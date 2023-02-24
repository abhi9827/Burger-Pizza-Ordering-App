import 'package:flutter/material.dart';

import '../Widgets/Search_items.dart';

class Reviewcart extends StatelessWidget {
  const Reviewcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "\$20.00",
          style: TextStyle(color: Colors.green),
        ),
        trailing: Container(
          width: 160,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, shape: StadiumBorder()),
            child: Text(
              "Submit",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Review Cart",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SearchItem(
            isBool: true,
          ),
          SearchItem(
            isBool: true,
          ),
          SearchItem(
            isBool: true,
          ),
          SearchItem(
            isBool: true,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
