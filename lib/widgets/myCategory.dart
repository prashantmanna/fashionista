import 'package:fashionista/models/category.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class Mycategory extends StatefulWidget {
  const Mycategory({super.key});

  @override
  State<Mycategory> createState() => _MycategoryState();
}

class _MycategoryState extends State<Mycategory> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 130,

      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: selectedIndex == index ? Colors.blue[200]:Colors.transparent,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(categories[index].image),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(categories[index].title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),),

                  ],
                ),

              ),
            );
          },

      ),);
  }
}
