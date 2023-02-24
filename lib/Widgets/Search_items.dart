import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  bool isBool = false;
  SearchItem({required this.isBool});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Center(
                  child: Image.network(
                      "https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4="),
                ),
                height: 100,
              )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: isBool == false
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rs. 100',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        )
                      ],
                    ),
                    isBool == false
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Center(
                                  child: Text(
                                    "Small",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                )),
                                Center(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Text("Small"),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                width: double.infinity,
                padding: isBool == false
                    ? EdgeInsets.symmetric(horizontal: 15, vertical: 30)
                    : EdgeInsets.only(left: 15, right: 15, top: 15),
                child: isBool == false
                    ? Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              Text(
                                "Add",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Icon(Icons.delete),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "Add",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
              )),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black,
              )
      ],
    );
  }
}
