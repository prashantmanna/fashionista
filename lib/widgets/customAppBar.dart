import 'package:flutter/material.dart';

import '../utils/constants.dart';
class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: constants.mainColor,
                padding: EdgeInsets.all(20)
            ),onPressed: (){}, icon: Icon(Icons.grid_view_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined),style: IconButton.styleFrom(
          backgroundColor: constants.mainColor,
          padding: EdgeInsets.all(20),
        ),)
      ],
    );
  }
}
