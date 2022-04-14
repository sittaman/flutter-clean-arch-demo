import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';

@JsonSerializable()
class Products {
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'oldPrice')
  double? oldPrice;

  @JsonKey(name: 'rate')
  int? rate;

  @JsonKey(name: 'reviews')
  int? reviews;

  @JsonKey(name: 'freeShipping')
  bool? freeShipping;

  @JsonKey(name: 'price')
  double? price;

  @JsonKey(name: 'discount')
  double? discount;

  @JsonKey(name: 'colors')
  int? colors;

  Products({
    this.name,
    this.id,
    this.image,
    this.oldPrice,
    this.rate,
    this.reviews,
    this.freeShipping,
    this.price,
    this.discount,
    this.colors,
  });
}
