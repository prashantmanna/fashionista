import 'package:fashionista/Detail/details_screen.dart';
import 'package:fashionista/models/products.dart';
import 'package:fashionista/provider/FavouriteProvider.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductsCart extends StatelessWidget {
  final product p1;

  const ProductsCart({super.key, required this.p1});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(p2: p1)),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Hero(
                    tag: p1.image,
                    child: Image.asset(
                      p1.image,
                      width: 130,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    p1.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${p1.price}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Row(
                      children: List.generate(
                          p1.colors.length,
                          (index) => Container(
                                width: 18,
                                height: 18,
                                margin: const EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                    color: p1.colors[index],
                                    shape: BoxShape.circle),
                              )),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: constants.secondColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(10)),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavourite(p1);
                  },
                  child: Icon(
                    provider.isExist(p1)?Icons.favorite:
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
