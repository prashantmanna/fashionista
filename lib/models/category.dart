class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image
  });
}

final List<Category> categories = [
  Category(title: "All", image: "images/all.png"),
  Category(title: "Beauty", image: "images/beauty.png"),
  Category(title: "Laptops", image: "images/laptop.jpeg"),
  Category(title: "Shoes", image: "images/shoes.png"),
  Category(title: "Formal", image: "images/menshirt.jpeg"),
  Category(title: "Jewelry", image: "images/jewelry.png"),
];
