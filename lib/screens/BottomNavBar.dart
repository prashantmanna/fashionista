import 'package:flutter/material.dart';
class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.white,
        height: 60,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              setState(() {
                currentIndex = 0;
              });
            }, icon: Icon(Icons.grid_view_outlined,size: 30,color: currentIndex == 0?Colors.grey:Colors.grey.shade400,)),
            IconButton(onPressed: (){
              setState(() {
                currentIndex = 1;
              });
            }, icon: Icon(Icons.favorite_border,size: 30,color: currentIndex == 1?Colors.grey:Colors.grey.shade400,)),
            SizedBox(width: 15,),
            IconButton(onPressed: (){
              currentIndex = 3;
            }, icon: Icon(Icons.shopping_cart_outlined,size: 30,color: currentIndex == 3?Colors.grey:Colors.grey.shade400,)),
            IconButton(onPressed: (){
              currentIndex = 4;
            }, icon: Icon(Icons.person,size: 30,color: currentIndex == 4?Colors.grey:Colors.grey.shade400,))
          ],
        ),
      ),
    );
  }
}
