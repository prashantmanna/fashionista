import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';
class ProductsCart extends StatelessWidget {
  final product p1;
  const ProductsCart({super.key, required this.p1});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){},
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
                SizedBox(height: 15,),
                Center(child: Image.asset(p1.image,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                  )
                  ,),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(p1.title,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
