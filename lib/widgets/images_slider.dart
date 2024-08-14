import 'package:flutter/material.dart';

class ImagesSlider extends StatelessWidget {
  final Function (int) onChange;
  final int currentSlide;
  const ImagesSlider({super.key, required this.currentSlide , required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 220,width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: PageView(
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: true,
            physics: ClampingScrollPhysics(),
            onPageChanged: onChange,
            children: [
              Image.asset(
                "images/shopping.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "images/shoppingdunia.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "images/slider.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "images/shop.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "images/shopi.jpg",
                fit: BoxFit.cover,
              ),

            ],
          ),
        ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) =>
                  AnimatedContainer(duration:
                  Duration(milliseconds: 3000),
                    width: currentSlide == index?15:5,height: 8,
                    margin: EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index?Colors.blue:Colors.transparent,
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                  ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
