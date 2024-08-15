import 'package:flutter/cupertino.dart';
import 'package:fashionista/models/products.dart';
import 'package:provider/provider.dart';
class CartProvider extends ChangeNotifier{
  final List<product> cart = [];
  List<product> get _cart => cart;

  void toggleCart(product p5){
    if(_cart.contains(p5)){
    for(product i in _cart){
      i.quantity++;
    }
    }else{
      _cart.add(p5);
    }
    notifyListeners();
  }

  static CartProvider of(BuildContext context,{
    bool listen = true,
  }){
    return Provider.of<CartProvider>(context,listen: listen);
  }
}