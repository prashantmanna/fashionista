import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: constants.mainColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey, size: 30),
          SizedBox(width: 10,),
          Flexible(
          flex: 5,child: TextField(
            decoration: InputDecoration(
              hintText: "Search.....",
              border: InputBorder.none
            ),
          ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.tune),),

        ],
      ),
    );
  }
}
