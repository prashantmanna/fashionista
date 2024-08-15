import 'package:fashionista/Detail/MyImageSlider.dart';
import 'package:fashionista/Detail/details_app_bar.dart';
import 'package:fashionista/models/products.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:fashionista/widgets/images_slider.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final product p2;
  const DetailsScreen({super.key,required this.p2});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            DetailsAppBar(),
            MyImageSlider(image: widget.p2.image,onChange: (index){
              setState(() {
                currentImage = index;
              });
            },)

          ],
        ),
      ),
    );
  }
}
