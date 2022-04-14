import 'package:flutter_app/modules/products/domain/products.dart';
import 'package:flutter_app/modules/products/domain/products_repository.dart';

class GetProductsByName {
  late final ProductsRepository repository;

  GetProductsByName(this.repository);

  Future<List<Products>> execute({
    required String name,
    required String orderBy,
  }) async {
    return await repository.getProductsByName(name, orderBy);
  }
}