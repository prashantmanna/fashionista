import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';
class AddToCart extends StatefulWidget {
  final product p4;

  const AddToCart({super.key, required this.p4});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border:Border.all(
                color: Colors.white,
                width: 2
              )
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.remove),
                  iconSize: 20,
                color: Colors.white,),
                const SizedBox(width: 5,),
                Text(currentIndex.toString(),style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                color: Colors.white),),
                const SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.add),
                  iconSize: 18,
                  color: Colors.white,)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: constants.secondColor
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                "Add to Cart",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20
              ),
              ),
            ),

          ),

        ],
      ),
    ),);
  }
}
