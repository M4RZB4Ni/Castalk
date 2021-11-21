

class IntroModel{
  final String imageUrl;
  final String header;
  final String description;

  IntroModel({required this.imageUrl, required this.header, required this.description});

  factory IntroModel.fromJson(dynamic json){
    return IntroModel(imageUrl: json['imageUrl'], header: json['header'], description: json['description']);
  }
}