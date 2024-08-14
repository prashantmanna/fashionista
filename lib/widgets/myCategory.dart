import 'package:fashionista/models/category.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class Mycategory extends StatelessWidget {
  const Mycategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 130,

      child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(categories[index].image),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Text(categories[index].title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),)
              ],
            );
          },
      separatorBuilder: (context,index)=> const SizedBox(
        width: 20,
      ),),);
  }
}
