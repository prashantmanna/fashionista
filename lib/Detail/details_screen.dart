import 'package:fashionista/Detail/MyImageSlider.dart';
import 'package:fashionista/Detail/addto_cart.dart';
import 'package:fashionista/Detail/description.dart';
import 'package:fashionista/Detail/details_app_bar.dart';
import 'package:fashionista/Detail/item_details.dart';
import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final product p2;

  const DetailsScreen({super.key, required this.p2});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;
  int currentColor = 1;
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: AddtoCart(p4: widget.p2,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                const DetailsAppBar(),
                MyImageSlider(image: widget.p2.image, onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) =>
                      AnimatedContainer(
                        duration:
                        const Duration(milliseconds: 3000),
                        width: currentImage == index ? 15 : 5,
                        height: 8,
                        margin: const EdgeInsets.only(right: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentImage == index ? Colors.blue : Colors
                                .transparent,
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                      ),
                  ),
          
                ),
                const SizedBox(height: 20,),
                Container(width: double.infinity, decoration: const BoxDecoration(
                  color: constants.mainColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),),),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ItemDetails(p3: widget.p2,),
                      const SizedBox(height: 10,),
                      const Text("Colors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      const SizedBox(height: 10,),
                      Row(
                        children: List.generate(widget.p2.colors.length, (index)=> GestureDetector(
                          onTap: (){
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index?Colors.white:widget.p2.colors[index],
                              border:currentColor == index?Border.all(color: widget.p2.colors[index]):null,
                            ),
                            padding: currentColor == index? const EdgeInsets.all(2):null,
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: widget.p2.colors[index],
                                shape: BoxShape.circle
                              ),
                            ),
                          ),
                        )),
                      ),
                      const SizedBox(height: 25,),
                  Description(description: widget.p2.description,),
          
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
