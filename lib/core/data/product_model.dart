class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
  return ProductModel(
    id: json['id']?.toString() ?? 'غير معروف', 
    title: json['title'] ?? 'بدون اسم',
    description: json['description'] ?? 'بدون وصف',
    price: (json['price'] != null) ? (json['price'] as num).toDouble() : 0.0,
    image: json['image']  ?? 'assets/img.png',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'image': image,
    };
  }
}
