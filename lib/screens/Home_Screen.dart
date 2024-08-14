import 'package:fashionista/widgets/SearchAppBar.dart';
import 'package:fashionista/widgets/customAppBar.dart';
import 'package:fashionista/widgets/images_slider.dart';
import 'package:fashionista/widgets/myCategory.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Customappbar(),
              const SizedBox(height: 20),
              const SearchAppBar(),
              const SizedBox(height: 20),
              ImagesSlider(
                currentSlide: currentSlide,
                onChange: (value) {
                  setState(() {
                    currentSlide = value;
                  });
                },
              ),
              const SizedBox(height: 20,),
              Mycategory()
            ],
          ),
        ),
      ),
    );
  }
}
