import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

import '../../../Model/food.dart';
import '../../../Provider/Product_Provider.dart';
import '../../../Widgets/Appbar.dart';
import '../../../Widgets/drawerside.dart';
import '../Detail_Page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ProductProvider? productProvider;
  int currentindex = 0;

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchBurgerData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        50;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppbar(
          title: 'Chicago IIL',
          height: 50.0,
        ),
        drawer: SafeArea(
          child: Drawerside(),
        ),
        body: SafeArea(
            child: Column(
          children: [
            // Column(children: const [
            //   // Padding(
            //   //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //   //   child: TextField(
            //   //     // showCursor: true,
            //   //     decoration: InputDecoration(
            //   //         prefixIcon: Icon(Icons.search),
            //   //         border: OutlineInputBorder(),
            //   //         hintText: "Search Burger"),
            //   //     autofocus: false,
            //   //   ),
            //   // ),
            // ]),
            //SizedBox(height: 5),
            Container(
              color: Colors.white,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (BuildContext context, index) {
                      final food = foods[index];
                      return InkWell(
                        onTap: () {
                          Get.to(
                              () => Detailpage(
                                    foods: food,
                                  ),
                              transition: Transition.leftToRight);
                        },
                        child: Container(
                          width: 100,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 7.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.5),
                                blurRadius: 10,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90.0,
                                width: 80.0,
                                padding: EdgeInsets.all(5.0),
                                color: Colors.white,
                                child: Image.network(
                                  food.imageUrl,
                                  height: 60.0,
                                ),
                              ),
                              Text(
                                food.name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  height: 1,
                                ),
                              ),
                              Container(
                                height: 25.0,
                                width: 25.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    'Popular',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                        height: 1),
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Text(
                      'View all >',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: foods.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    final food = foods[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                            () => Detailpage(
                                  foods: food,
                                ),
                            transition: Transition.downToUp);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.only(
                              top: 15.0,
                              left: 2.0,
                              right: 5.0,
                              bottom: 20.0,
                            ),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.55),
                                    blurRadius: 10,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      food.name,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1),
                                    ),
                                    Text(
                                      food.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                food.imageUrl,
                                height: 130.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
