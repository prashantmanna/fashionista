import 'package:fashionista/models/products.dart';
import 'package:flutter/material.dart';
class AddtoCart extends StatelessWidget {
  final product p4;
  const AddtoCart({super.key, required this.p4});

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
                  iconSize: 18,
                color: Colors.white,),
                const SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.add),
                  iconSize: 18,
                  color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    ),);
  }
}
