// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TourModel {
  final String name;
  final String description;
  final String image;
  final double rating;
  final String location;
  final int id;

  TourModel({
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.location,
    required this.id,
  });

  TourModel copyWith({
    String? name,
    String? description,
    String? image,
    double? rating,
    String? location,
    int? id,
  }) {
    return TourModel(
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      location: location ?? this.location,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'rating': rating,
      'location': location,
      'id': id,
    };
  }

  factory TourModel.fromMap(Map<String, dynamic> map) {
    return TourModel(
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      rating: map['rating'] as double,
      location: map['location'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TourModel.fromJson(String source) => TourModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TourModel(name: $name, description: $description, image: $image, rating: $rating, location: $location, id: $id)';
  }

  @override
  bool operator ==(covariant TourModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.description == description && other.image == image && other.rating == rating && other.location == location && other.id == id;
  }

  @override
  int get hashCode {
    return name.hashCode ^ description.hashCode ^ image.hashCode ^ rating.hashCode ^ location.hashCode ^ id.hashCode;
  }
}
