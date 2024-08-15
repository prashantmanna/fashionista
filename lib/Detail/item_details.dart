import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final product p3;

  const ItemDetails({super.key, required this.p3});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          p3.title,
          style: const TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500, fontSize: 25),
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${p3.price}",
                  style: const TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w400, fontSize: 25),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: constants.secondColor
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                          children: [
                            const Icon(Icons.star,size: 16,color: Colors.white,),
                            const SizedBox(width: 2,),
                            Text(
                              p3.rate.toString(),
                              style: const TextStyle(fontFamily: "Poppins",fontWeight:FontWeight.bold, color: Colors.white,fontSize: 14),
                            )
                          ],
                      )
                    ),const SizedBox(width: 10,),
                    Text(p3.review,style: const TextStyle(fontSize: 15,color: Colors.green),),

                  ],
                )
              ],
            ),
            const Spacer(),
            Text.rich(TextSpan(
              children: [
                const TextSpan(text: "Seller: ",style: TextStyle(fontSize: 16,fontFamily: "Poppins"),),
                TextSpan(text: p3.seller,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Poppins"),),
              ]
            )),

          ],
        )

      ],
    );
  }
}
