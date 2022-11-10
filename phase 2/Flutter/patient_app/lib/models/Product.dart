import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [

      "assets/images/iphon_G.jpg",
      "assets/images/iphone_l.jpg",
      "assets/images/iphone_zoom.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Iphone™",
    price: 18000,
    description: description_3,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [

      "assets/images/women_f.jpg",
    ],
    colors: [

      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Fashion™",
    price: 249.00,
    description: description_2,
    rating: 3.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [

      "assets/images/ps4_pes.jpg",
    ],
    colors: [
      Color(0xFFF6625E),

      Colors.white,
    ],
    title: "Pes™",
    price: 300,
    description: description_4,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/babys_h.jpg",
      "assets/images/babys_h_2.jpg",
      "assets/images/babyys_h_3.jpg",
      "assets/images/babys_h_4.jpg",
      "assets/images/babys_h_6.jpg",
    ],
    colors: [

      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "babys™",
    price: 64.99,
    description: description_5,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
const String description_2 ="LC Waikiki MODEST Elastic Waist Straight Pocket Detailed Women's TrousersBrand: LC Waikiki | Similar products from LC Waikiki";
const String description_3 ="Apple IPhone 11 With FaceTime - 128GB - Purple";
const String description_4 ="Konami EFootball PES 2021: SEASON UPDATE - Arabic Edition - PlayStation 4";
const String description_5 ="Pampers Baby Pants Diapers – Size 3 – 31 Pcs";