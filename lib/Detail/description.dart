import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: constants.secondColor
              ),
              alignment: Alignment.center,
              child: const Text("Description",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16
              ),),
            ),
            const Text("Specifications",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                fontSize: 16
              ),),
            const Text("Reviews",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                fontSize: 16
              ),),

          ],
        ),
        const SizedBox(height: 20,),
        Text(
          description,style: const TextStyle(
          fontSize: 16,
          color: Colors.grey
        ),)
      ],
    );
  }
}
