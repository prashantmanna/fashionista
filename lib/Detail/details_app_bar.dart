import 'package:fashionista/models/products.dart';
import 'package:fashionista/provider/FavouriteProvider.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  final product p6;
  const DetailsAppBar({super.key,required this.p6});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return Padding(padding:const EdgeInsets.all(15),
    child: Row(
        children: [
          IconButton(
        style: IconButton.styleFrom(
        backgroundColor: constants.mainColor,
        padding:const EdgeInsets.all(20),
    ),
    onPressed: (){
          Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back_ios),
      ),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined),
          style: IconButton.styleFrom(
            backgroundColor: constants.mainColor,
            padding: const EdgeInsets.all(20),
          ),),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){
            provider.toggleFavourite(p6);
          }, icon: Icon(provider.isExist(p6)?Icons.favorite:Icons.favorite_border,color: Colors.black,size: 25,),
            style: IconButton.styleFrom(
              backgroundColor: constants.mainColor,
              padding:const EdgeInsets.all(20),
            ),),

      ],
    ),
    );
  }
}
