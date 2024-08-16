import 'package:flutter/cupertino.dart';
import 'package:fashionista/models/products.dart';
import 'package:provider/provider.dart';
class FavouriteProvider extends ChangeNotifier{
  final List<product> favourites = [];
  List<product> get _favourites => favourites;

  void toggleFavourite(product p5){
    if(_favourites.contains(p5)){
      _favourites.remove(p5);
    }else{
      _favourites.add(p5);
    }
    notifyListeners();
  }

  bool isExist(product p){
    final isExist = _favourites.contains(p);
    return isExist;
  }


  static FavouriteProvider of(BuildContext context,{
    bool listen = true,
  }){
    return Provider.of<FavouriteProvider>(context,listen: listen);
  }
}