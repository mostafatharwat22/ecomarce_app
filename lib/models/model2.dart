class ModelData {
  final dynamic id;
  final dynamic title;
  final dynamic price;
  final dynamic description;
 final dynamic image;
 final RatingModel rating;
  ModelData(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});
  factory ModelData.fromJson(json){
    return ModelData(
        id:json["id"],
        title: json["title"],
        price:json["price"]== null?0.0:json["price"].toDouble(),
        description:json["description"],
        image:json["image"],
      rating: RatingModel.fromJson(json["rating"]),
    );
  }
}

class RatingModel{
  final dynamic rate;
  final dynamic count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.fromJson(json){
    return RatingModel(
        rate: json["rate"]== null?0.0:json["rate"].toDouble(),
        count: json["count"]== null?0.0:json["count"].toDouble()
    );
  }
}


















// class ModelData {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   Rating rating;
//
//   ModelData(
//       {this.id,
//         this.title,
//         this.price,
//         this.description,
//         this.category,
//         this.image,
//         this.rating});
//
//   ModelData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     price = json['price'];
//     description = json['description'];
//     category = json['category'];
//     image = json['image'];
//     rating =
//     json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     data['category'] = this.category;
//     data['image'] = this.image;
//     if (this.rating != null) {
//       data['rating'] = this.rating.toJson();
//     }
//     return data;
//   }
// }
//
// class Rating {
//   double rate;
//   int count;
//
//   Rating({this.rate, this.count});
//
//   Rating.fromJson(Map<String, dynamic> json) {
//     rate = json['rate'];
//     count = json['count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rate'] = this.rate;
//     data['count'] = this.count;
//     return data;
//   }
// }