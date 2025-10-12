class ProductModel {
  final String title;
  final String description;
  final String image;
  final double price;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  static List<ProductModel> products = [
    ProductModel(
      image: "assets/product/product6.png",
      title: "Black dress",
      price: 110,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product1.png",
      title: "Black shoes",
      price: 100,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product3.png",
      title: "Pandora",
      price: 40,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product4.png",
      title: "Golden Ring",
      price: 120,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product2.png",
      title: "October",
      price: 200,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product3.png",
      title: "Pandora",
      price: 140,
      description: "reversible angora cardigan",
    ),
  ];
}
