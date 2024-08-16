import 'package:fashionista/cart/cart_screen.dart';
import 'package:fashionista/favourite/favourite.dart';
import 'package:fashionista/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  List screens = const [
    Scaffold(),
    favourite(),
    HomeScreen(),
    CartScreen(),
    Scaffold()
  ];
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
        shape: const CircleBorder(),
        backgroundColor: Colors.redAccent,
        child: const Icon(
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
            }, icon: Icon(Icons.grid_view_outlined,size: 30,color: Colors.grey.shade400)),
            IconButton(onPressed: (){
              setState(() {
                currentIndex = 1;
              });
            }, icon: Icon(Icons.favorite_border,size: 30,color: Colors.grey.shade400,)),
            const SizedBox(width: 15,),
            IconButton(onPressed: (){
              setState(() {
                currentIndex = 3;
              });
            }, icon: Icon(Icons.shopping_cart_outlined,size: 30,color: Colors.grey.shade400,)),
            IconButton(onPressed: (){
              setState(() {
                currentIndex = 4;
              });
            }, icon: Icon(Icons.person,size: 30,color: Colors.grey.shade400,))
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
