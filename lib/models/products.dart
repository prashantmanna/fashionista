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

final List<product> all = [
  product(title: "Wireless Headphones",
      description: "boAt Rockerz 450 Bluetooth On Ear Headphones with Mic,"
          " Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, "
          "Integrated Controls and Dual Modes(Luscious Black)",
      image: "images/headphones.jpeg",
      price: 120,
      seller: "BoAt",
      colors: [

        Colors.blue,
        Colors.grey,
        Colors.red,
        Colors.black,
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
      image: "images/smart.jpg",
      price: 1399,
      seller: "fastrack",
      colors: [
        Colors.teal.shade900,
        Colors.green,
        Colors.black,
      ],
      category: "Electronics",
      review: "(99 reviews)",
      rate: 4.1,
      quantity: 1),
  product(title: "Formal Shirt",
      description: "Formal t-shirts for mens",
      image: "images/men1.jpg",
      price: 349,
      seller: "Cocoblu Retail",
      colors: [
        Colors.lightBlueAccent,
        Colors.grey,
        Colors.black
      ],
      category: "Clothes",
      review: "(199 reviews)",
      rate: 4.4,
      quantity: 1),
  product(title: "Acer Aspire Lite",
      description: "Acer [Smartchoice] Aspire Lite AMD "
          "Ryzen 3 5300U Premium Thin and Light Laptop (Windows 11 "
          "Full HD Display, Metal Body, Steel Gray, 1.6 KG"
      ,
      image: "images/acer.jpg",
      price: 26990,
      seller: "Acer",
      colors: [
        Colors.grey,
        Colors.black
      ],
      category: "Electronics",
      review: "(501 reviews)",
      rate: 3.7,
      quantity: 1),
  product(title: "iQOO Neo9 Pro 5G",
      description: "iQOO Neo9 Pro 5G (Conqueror Black, 8GB RAM, 256GB Storage) | Snapdragon 8 Gen 2 Processor | Supercomputing Chip Q1 | Flagship Level Sony IMX920 Camera",
      image: "images/phone1.jpg",
      price: 36998,
      seller: "IQOO",
      colors: [
        Colors.black,
        Colors.red
      ], category: "Electronics",
      review: "(756 reviews)",
      rate: 4.1,
      quantity: 1)
];



