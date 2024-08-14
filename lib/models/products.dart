import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.seller,
    required this.colors,
    required this.category,
    required this.review,
    required this.rate,
    required this.quantity});
}

final List<product> products = [
  product(title: "Wireless Headphones",
      description: "boAt Rockerz 450 Bluetooth On Ear Headphones with Mic,"
          " Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, "
          "Integrated Controls and Dual Modes(Luscious Black)",
      image: "images/headphones.jpeg",
      price: 120,
      seller: "BoAt",
      colors: [
        Colors.black,
        Colors.blue,
        Colors.white
      ],
      category: "Electronics",
      review: "(320 reviews)",
      rate: 4.8,
      quantity: 1),
  product(title: "Smart Watch",
      description: "Fastrack Limitless Glide Advanced UltraVU HD Display|"
          "BT Calling|Advance Chipset|85+ Sports Modes "
          "& Watchfaces|Voice Assistant|24 * 7 Health Suite"
          "|IP67 Smartwatch",
      image: "images/smartwatch.jpg", price: 1399, seller: "fastrack",
      colors: [
        Colors.teal.shade900,
        Colors.black,
        Colors.white70
      ],
      category: "Electronics", review: "(99 reviews)", rate: 4.1, quantity: 1)
];
