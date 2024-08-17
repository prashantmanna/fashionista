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
      quantity: 1),
  product(title: "Leriya fashion",
      description: "Leriya Fashion Shirt for Men | Tropical Leaf Printed Rayon Shirts for Men | Preppy Short Sleeves | Spread Collared Neck | Perfect for Outing | Beach | Camp Wear Shirt for Boys",
      image: "images/shirt.jpg",
      price: 309,
      seller: "Leriya Fashion",
      colors: [
        Colors.green,
        Colors.white
      ],
      category: "Clothes",
      review: "(201 reviews)",
      rate: 3.9,
      quantity: 1),
  product(title: "Boult K40",
      description: "Boult Audio K40 True Wireless in Ear Earbuds with 48H Playtime, Clear Calling 4 Mics, 45ms Low Latency Gaming, Premium Grip, 13mm Bass Drivers, Type-C Fast Charging, BTv 5.3 Ear Buds TWS (Berry Red)",
      image: "images/earbud.jpg",
      price: 999,
      seller: "Boult",
      colors: [
        Colors.red,
        Colors.blue
      ],
      category: "Electronics",
      review: "(3120 reviews)", rate: 4.6, quantity: 1),
  product(title: "Lymio Mens Jeans",
      description: "Lymio Men Jeans || Men Jeans Pants || Denim Jeans || Baggy Jeans for Men (Jeans-06-07-08)",
      image: "images/blueJeans.jpg",
      price: 749,
      seller: "Lymio jeans",
      colors: [
        Colors.blue,
        Colors.blue.shade900
      ],
      category: "Clothes",
      review: "(3200 reviews)",
      rate: 4.1,
      quantity: 1)
];


final List<product> cosmetics = [
  product(title: "MAYBELLINE",
      description: "MAYBELLINE fit me pressed matte oily skin",
      image: "images/cos1.jpg",
      price: 182,
      seller: "MAYBELLINE",
      colors: [

      ],
      category: "Cosmetics",
      review: "(400 review)",
      rate: 4.3,
      quantity: 1),
  product(title: "LAKMÉ 9",
      description: "LAKMÉ 9 To 5 Cc Cream Mini|| 01-Beige|| Light Face Makeup With Natural Coverage For All Skin|| Spf 30-Tinted Moisturizer To Brighten Skin|| Conceal Dark Spots|| 9 G,1 Count",
      image: "images/lakme.jpg",
      price: 99,
      seller: "LAKME",
      colors: [

      ],
      category: "Cosmetics",
      review: "(99 review)",
      rate: 4.7,
      quantity: 1),
  product(title: "Lipstick",
      description: "Maybelline New York Matte Lipstick, Intense Colour, Keeps Lips Moisturised, 660 Touch of Spice, Color Sensational Creamy Matte Lipstick, 3.9g",
      image: "images/lipstick.jpg",
      price: 99,
      seller: "MAYBELLINE",
      colors: [

      ],
      category: "Cosmetics",
      review: "(199 review)",
      rate: 4.9,
      quantity: 1),
  product(title: "Lip Bam",
      description: "Insight Cosmetics Lip & Cheek Tint|Enriched with Vitamin E | Multipurpose|Lightweight Formula|100% Paraben Free| Long Lasting, B07-03",
      image: "images/instant.jpg",
      price: 105,
      seller: "Instant Cosmetics",
      colors: [

      ],
      category: "Cosmetics",
      review: "(50 review)",
      rate: 4.1,
      quantity: 1)

];

final List<product> laptops = [
  product(title: "DELL Thin Laptop",
      description: "Dell 15 Thin & Light Laptop, 12th Gen Intel Core i5-1235U Processor, 8GB, 512GB SSD, 15.6 (38) cm FHD Display, Windows 11 MSO'21, 15 Month McAfee Antivirus, Black, Spill-Resistant Keyboard,1.66kg",
      image: "images/dell.jpg",
      price: 50000, 
      seller: "DELL",
      colors: [
        
      ],
      category: "Electronics", 
      review: "(450 review)", 
      rate: 4.5, 
      quantity: 1),
  product(title: "Lenovo Ideapad",
      description: "Lenovo IdeaPad Slim 3 12th Gen Intel Core i5-12450H 14 (35.5cm) FHD 250 Nits Thin & Light Laptop (16GB/512GB SSD/Win 11/Office 21/1Yr ADP Free/Alexa built-in/3 mon. Game Pass/Grey/1.37Kg), 83EQ005VIN",
      image: "images/laptop.jpeg",
      price: 50490,
      seller: "Lenovo",
      colors: [],
      category: "Electronics",
      review: "(199 reviews)",
      rate: 4.3,
      quantity: 1),
  product(title: "Hp",
      description: "Chuwi HeroBook Pro 14.1'' Intel Celeron N4020 Laptop with 8GB RAM, 256GB SSD, Windows 11, 1TB Expand, FHD IPS, Ultra Slim, USB3.0, Mini-HDMI, Webcam",
      image: "images/chuwi.jpg",
      price: 16990,
      seller: "Hp",
      colors: [],
      category: "Electronics",
      review: "(99 reviews)",
      rate: 4.3,
      quantity: 1),
  product(title: "Lenovo",
      description: "[Smart Choice] Lenovo IdeaPad Gaming 3 Laptop AMD Ryzen 5 5500H 15.6 (39.62cm) FHD IPS 300nits 144Hz (8GB/512GB SSD/Win 11/NVIDIA RTX 2050 4GB/Alexa/3 Month Game Pass/Shadow Black/2.32Kg), 82K20289IN",
      image: "images/l.jpg",
      price: 16990,
      seller: "Lenovo",
      colors: [],
      category: "Electronics",
      review: "(499 reviews)",
      rate: 4.7,
      quantity: 1),



];

final List<product> shoes = [
  product(title: "Boldfit Shoes",
      description: "Boldfit Walking Shoes for Men Slip On Shoes for Men Cushion Shoes Without Laces for Men Jogging Shoes for Men Regular Wear Without Lace Shoes for Men Soft Shoes for Men Without Laces Slip Ons for Men",
      image: "images/shoes1.jpg",
      price: 899,
      seller: "BoldFit",
      colors: [

      ],
      category: "Shoes",
      review: "(322 reviews)",
      rate: 4.6,
      quantity: 1),
  product(title: "ASIAN MEN",
      description: "Boldfit Walking Shoes for Men Slip On Shoes for Men Cushion Shoes Without Laces for Men Jogging Shoes for Men Regular Wear Without Lace Shoes for Men Soft Shoes for Men Without Laces Slip Ons for Men",
      image: "images/shoes3.jpg",
      price: 829,
      seller: "ASIAN MEN",
      colors: [

      ],
      category: "Shoes",
      review: "(432 reviews)",
      rate: 4.6,
      quantity: 1),
  product(title: "ASIAN MEN",
      description: "ASIAN Men's Mexico-02 Casual Sneaker Shoes",
      image: "images/shoes4.jpg",
      price: 829,
      seller: "ASIAN MEN",
      colors: [

      ],
      category: "Shoes",
      review: "(532 reviews)",
      rate: 4.6,
      quantity: 1),
  product(title: "PUMA",
      description: "Puma Men's Dazzler Sneakers",
      image: "images/shoes5.jpg",
      price: 569,
      seller: "PUMA",
      colors: [

      ],
      category: "Shoes",
      review: "(532 reviews)",
      rate: 4.6,
      quantity: 1),
];

final List<product> formal = [
  product(title: "Amazon Brand",
      description: "Amazon Brand - Symbol Men's Cotton Rich Formal Shirt | Plain | Full Sleeve - Regular Fit (Available in Plus Size)",
      image: "images/shirt1.jpg",
      price: 549,
      seller: "Amazon",
      colors: [

      ],
      category: "Clothes",
      review: "(322 reviews)",
      rate: 4.5,
      quantity: 1),
  product(title: "Henrik Shirts",
      description: "Henrik Shirts - Premium Formal Cotton Cufflink Shirts for Men with Free Cuff Links",
      image: "images/shirt2.jpg",
      price: 549,
      seller: "Henrik Shirts",
      colors: [

      ],
      category: "Clothes",
      review: "(302 reviews)",
      rate: 4.7,
      quantity: 1),
  product(title: "Formal Trouser",
      description: "MALENO Men Formal Trouser Regular Fit Solid | Soft and Breathable Pant Combo",
      image: "images/arro.jpg",
      price: 799,
      seller: "MALENO Men Trouser",
      colors: [

      ],
      category: "Clothes",
      review: "(392 reviews)",
      rate: 4.7,
      quantity: 1),
  product(title: "PETER ENGLAND",
      description: "Peter England Men Work Regular Fit Utility Pants",
      image: "images/pant.jpg",
      price: 799,
      seller: "PETER ENGLAND",
      colors: [

      ],
      category: "Clothes",
      review: "(692 reviews)",
      rate: 4.1,
      quantity: 1),




];

final List<product> jwellery = [
  product(title: "FABUNORA Special",
      description: "FABUNORA Special Sorry Gift for Girlfriend/Wife- Pure Silver Necklace Gift Set With Certificate of Authenticity and 925 Stamp (Yellow Gold Finish)",
      image: "images/jwellery1.jpg", price: 2899, seller: "FABUNORA", colors: [], category: "Jwellery", review: "(427 reviews)", rate: 4.2, quantity: 1),
  product(title: "Shining Diva",
      description: "Shining Diva Fashion Latest Stylish Design Fancy Pearl Choker Traditional Temple Necklace Jewellery Set for Women (14822s) (Golden)",
      image: "images/neck.jpg",
      price: 597, seller: "Shining Diva",
      colors: [],
      category: "Jwellery",
      review: '(455 reviews)',
      rate: 4.1,
      quantity: 1),
  product(title: "ZAVERI PEARLS",
      description: "ZAVERI PEARLS Gold Tone Kundan Choker Necklace Earring Maangtikka & Ring Set For Women-ZPFK10799",
      image: "images/necklace.jpg",
      price: 751,
      seller: "ZAVERI PEARLS", 
      colors: [], 
      category: "BEAUTY", 
      review: "(320 reviews)", 
      rate: 4.4, 
      quantity: 1),
  product(title: "HKG Gold",
      description: "HKG One Gram Gold Plated Necklace Set with Earrings | Traditional Jewelry set for Women",
      image: 'images/necklace1.jpg',
      price: 699,
      seller: "HKG",
      colors: [],
      category: "Jwelley",
      review: "(400 reviews)",
      rate: 4.1,
      quantity: 1)
];

