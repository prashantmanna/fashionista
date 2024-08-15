import 'package:fashionista/Detail/details_screen.dart';
import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';
class ProductsCart extends StatelessWidget {
  final product p1;
  const ProductsCart({super.key, required this.p1});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(p2: p1)),);
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${p1.price}",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),),
                    Row(children: List.generate(p1.colors.length, (index) =>
                    Container(
                      width: 18,
                      height: 18,
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: p1.colors[index],
                        shape: BoxShape.circle
                      ),
                    )),)
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
