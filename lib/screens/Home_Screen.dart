import 'package:fashionista/models/category.dart';
import 'package:fashionista/models/products.dart';
import 'package:fashionista/widgets/SearchAppBar.dart';
import 'package:fashionista/widgets/customAppBar.dart';
import 'package:fashionista/widgets/images_slider.dart';
import 'package:fashionista/widgets/myCategory.dart';
import 'package:fashionista/widgets/products_cart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<product>> selectedCategories = [all,cosmetics,laptops];
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
              SizedBox(height: 130,

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

                ),),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special for you",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                  Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black54),),

                ],
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: selectedCategories[selectedIndex].length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.78
                  , crossAxisSpacing: 10),
                  itemBuilder: (context,index){
                return ProductsCart
                  (p1: selectedCategories[selectedIndex][index]);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
