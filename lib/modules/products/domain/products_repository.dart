import 'package:flutter_app/modules/products/domain/products.dart';

abstract class ProductsRepository {
  Future<List<Products>> getProductsByName(String name, String orderBy);
  Future<List<Products>> getPromotions();
}