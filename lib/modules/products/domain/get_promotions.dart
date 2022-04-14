import 'package:flutter_app/modules/products/domain/products.dart';
import 'package:flutter_app/modules/products/domain/products_repository.dart';

class GetPromotions {
  late final ProductsRepository repository;

  GetPromotions(this.repository);

  Future<List<Products>> execute() async {
    return await repository.getPromotions();
  }
}