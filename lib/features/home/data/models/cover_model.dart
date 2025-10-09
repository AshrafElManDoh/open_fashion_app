class CoverModel {
  final String image, title;

  CoverModel({required this.image, required this.title});

   static List<CoverModel> covers = [

    CoverModel(title: "Black collection", image: "assets/cover/cover3.png"),
    CoverModel(title: "HAE BY HAEKIM", image: "assets/cover/cover2.png"),
    CoverModel(title: "White collection", image: "assets/cover/cover1.png"),

  ];
}
