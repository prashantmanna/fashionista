import 'package:fashionista/utils/constants.dart';
import 'package:fashionista/widgets/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Customappbar(),
            SizedBox(height: 20,),
            SearchBar(),
          ],
        ),),
      ),
    );
  }
}
