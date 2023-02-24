import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Model/food.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> BurgerList = [];
  ProductModel? productModel;

  fatchBurgerData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("Food").get();
    value.docs.forEach(
      (element) {
        productModel = ProductModel(
          ProductImage: element.get("imagrUrl"),
          ProductName: element.get("name"),
          ProductPrice: element.get("Price"),
          Productoverview: element.get("overview"),
        );
        newList.add(productModel!);
      },
    );
    BurgerList = newList;
    notifyListeners();
  }

  List<ProductModel> get getBurgerDataList {
    return BurgerList;
  }
}
