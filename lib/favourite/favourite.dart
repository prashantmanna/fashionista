import 'package:fashionista/provider/FavouriteProvider.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    final list = provider.favourites;
    return Scaffold(
      backgroundColor: constants.mainColor,
      appBar: AppBar(
        backgroundColor: constants.mainColor,
        title: const Text(
          "Favourite",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final favourites = list[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(favourites.image),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favourites.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    favourites.category,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey.shade400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$${favourites.price}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 40,
                          right: 35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    list.removeAt(index);
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 22,
                                  )),
                            ],
                          ))
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
