class FruitsAndVegetablesModel {
  final String image;
  final String name;
  final double price;
  final String measurement;
  final String? description;
  int quantity;
  FruitsAndVegetablesModel({
    required this.image,
    required this.name,
    required this.price,
    required this.measurement,
    this.description,
    this.quantity = 1,
  });

  static final List<FruitsAndVegetablesModel> fruitsAndVegetablesList = [
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/okra.png",
      name: "Okra",
      price: 100,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/onions.png",
      name: "Onions",
      price: 50,
      measurement: "Small",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/carrots.png",
      name: "Carrots",
      price: 200,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/ugu.png",
      name: "Ugu",
      price: 200,
      measurement: "Bundle",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/tomatoes.png",
      name: "Fresh Tomato",
      price: 250,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/coco_yam.png",
      name: "Cocoyam",
      price: 200,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/pepper.png",
      name: "Fresh Pepper",
      price: 100,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/otazileaf.png",
      name: "Otazi leaf",
      price: 100,
      measurement: "Bundle",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/yam.png",
      name: "Yam",
      price: 300,
      measurement: "Small",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/waterleaf.png",
      name: "Water Leaf",
      price: 100,
      measurement: "Bundle",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/sweet_potatoes.jfif",
      name: "Sweet Potatoes",
      price: 500,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/oziza.png",
      name: "Oziza Leaf",
      price: 100,
      measurement: "Bundle",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/orange.jfif",
      name: "Orange",
      price: 200,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/irish_potatotes.jfif",
      name: "Irish Potatoes",
      price: 500,
      measurement: "Shade",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/banana.jfif",
      name: "Banana",
      price: 200,
      measurement: "Bundle",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/cucumbers.jfif",
      name: "Cucumba",
      price: 100,
      measurement: "Small",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/apple.jfif",
      name: "Apple",
      price: 250,
      measurement: "Small",
    ),
    FruitsAndVegetablesModel(
      image: "assets/fruitsAndVegetables/greenleaf.jfif",
      name: "Green leaf",
      price: 100,
      measurement: "Bundle",
    ),
  ];
}
