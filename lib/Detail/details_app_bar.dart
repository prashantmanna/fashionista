import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.all(15),
    child: Row(
        children: [
          IconButton(
        style: IconButton.styleFrom(
        backgroundColor: constants.mainColor,
        padding:const EdgeInsets.all(20),
    ),
    onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),
      ),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined),
          style: IconButton.styleFrom(
            backgroundColor: constants.mainColor,
            padding: const EdgeInsets.all(20),
          ),),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite),
            style: IconButton.styleFrom(
              backgroundColor: constants.mainColor,
              padding:const EdgeInsets.all(20),
            ),),

      ],
    ),
    );
  }
}
