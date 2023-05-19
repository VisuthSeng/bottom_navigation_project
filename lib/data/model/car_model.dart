import 'dart:convert';

class CarModel {
  final int id;
  final String name;
  final String type;
  final double price;

  CarModel({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
  });

  CarModel copyWith({
    int? id,
    String? name,
    String? type,
    double? price,
  }) {
    return CarModel(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'price': price,
    };
  }

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarModel.fromJson(String source) =>
      CarModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CarModel(id: $id, name: $name, type: $type, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ type.hashCode ^ price.hashCode;
  }
}
