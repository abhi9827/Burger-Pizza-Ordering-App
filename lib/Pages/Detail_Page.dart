import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/food.dart';

class Detailpage extends StatefulWidget {
  final Food foods;

  Detailpage({required this.foods});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  Widget _container(Widget child) {
    return Container(
      height: 45.0,
      width: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: Offset(1, 1),
            blurRadius: 10,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final food = widget.foods;

    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _size.height * 0.67,
                  margin: const EdgeInsets.only(bottom: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(500.0),
                      bottomLeft: Radius.circular(500.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(1, 1),
                        blurRadius: 10,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 35.0,
                  left: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: _container(
                          const Icon(
                            Icons.chevron_left,
                            size: 35.0,
                          ),
                        ),
                      ),
                      _container(
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                          color: Color.fromARGB(255, 248, 21, 4),
                          iconSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: _size.height * 0.15,
                  left: 10.0,
                  right: 10.0,
                  child: Column(
                    children: [
                      Text(
                        food.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w900,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        food.overview,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image.network(
                          food.imageUrl,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 40.0,
                  left: _size.width * 0.12,
                  child: _container(TextButton(
                    onPressed: () {},
                    child: const Text(
                      "S",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )),
                ),
                Positioned(
                  bottom: 0,
                  // bottom: -3.0,
                  left: _size.width * 0.45,
                  child: _container(
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "M",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),

                      // style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  right: _size.width * 0.10,
                  child: _container(TextButton(
                    onPressed: () {},
                    child: Text(
                      "L",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Price",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        food.Price,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // cartController.addProduct(food);
                          },
                          icon: Icon(
                            Icons.add_circle,
                            size: 40,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60.0,
                width: 130.0,
                decoration: const BoxDecoration(
                  //color: ConstantColor.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                    onPressed: () {
                      //  Get.to(() => CartProducts());
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          "Go to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
