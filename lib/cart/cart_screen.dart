import 'package:fashionista/cart/check_out.dart';
import 'package:fashionista/provider/cart_provider.dart';
import 'package:fashionista/screens/BottomNavBar.dart';
import 'package:fashionista/utils/constants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final list = provider.cart;
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add ? provider.incrementQ(index) : provider.decrementQ(index);
          });
        },
        child: Icon(icon,size: 20,),
      );
    }
    return Scaffold(
      bottomSheet: const CheckOut(),
      backgroundColor: constants.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bottomnavbar()));
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                    ),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: "Poppins"),
                  ),
                  Container(
                    width: 40,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final cart = list[index];
                    return Stack(children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(5),
                                child: Image.asset(
                                    cart.image
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cart.title, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),),
                                  SizedBox(height: 5,),
                                  Text(cart.category, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey.shade400),),
                                  SizedBox(height: 10,),
                                  Text("\$${cart.price}", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,

                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 32,
                          right: 35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(onPressed: () {
                                list.removeAt(index);
                                setState(() {

                                });
                              },
                                  icon: Icon(Icons.delete, color: Colors.red,
                                    size: 22,)),
                              SizedBox(height: 10,),
                              Container(height: 40, decoration: BoxDecoration(
                                  color: constants.mainColor,
                                  border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 2
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10,),
                                    productQuantity(Icons.remove, index),
                                    const SizedBox(width: 10,),
                                    Text(cart.quantity.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    productQuantity(Icons.add, index),
                                    const SizedBox(width: 10,),
                                  ],
                                ),)
                            ],
                          ))
                    ],);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
