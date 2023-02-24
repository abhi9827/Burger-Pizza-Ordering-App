import 'dart:ffi';

class Food {
  final String imageUrl;
  final String name;
  final String overview;
  String Price;

  Food({
    required this.name,
    required this.overview,
    required this.imageUrl,
    required this.Price,
  });
}

class ProductModel {
  String ProductName;
  String ProductImage;
  Int ProductPrice;
  String Productoverview;
  ProductModel(
      {required this.ProductImage,
      required this.ProductName,
      required this.ProductPrice,
      required this.Productoverview});
}

List<Food> foods = [
  Food(
    name: 'Burger ',
    overview:
        'A burger is a flat round mass of minced meat or vegetables, which is fried and often eaten in a bread roll.',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/02/07/83/40/1000_F_207834031_jOhEclXLBUryYCgSgIy1SZrG5MV2bQEB.jpg',
    Price: 'Rs. 100',
  ),
  Food(
    name: ' Pizza',
    overview:
        'A delicious pizza has an intensely cheesy flavor. The combination of tomato sauce and cheese creates a perfect marriage of flavor. ',
    imageUrl:
        'https://ak.picdn.net/offset/photos/5fa5bb866f52af4409e4f7f9/medium/photo.jpg',
    Price: 'Rs. 200',
  ),
  Food(
    name: ' Cake',
    overview:
        'cake, in general, any of a variety of breads, shortened or unshortened, usually shaped by the tin in which it is baked, or a sweetened bread, often rich or delicate.',
    imageUrl:
        'https://i.pinimg.com/originals/04/bf/47/04bf476811d92188fff13042975da699.jpg',
    Price: 'Rs. 300',
  ),
  Food(
    name: ' Donuts',
    overview:
        'Flavor and fragrance ought to be distinctive, well-balanced - sweet but not cloying - and appealing enough to demand a second bite.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmovClj5htIX1_ZHcygxyG5S4G29Q22cEiEeKud9-R9kRgNMcurmYistRM3EgYXZ7Doo&usqp=CAU',
    Price: 'Rs. 80',
  ),
];




//AIzaSyC7Mm0mUlXarcMusHJkHZ2cgkoG4guxe3g