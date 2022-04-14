import 'package:flutter_app/modules/order/domain/order.dart';
import 'package:flutter_app/modules/order/domain/order_repository.dart';

class PostOrder {
  late final OrderRepository repository;

  PostOrder(this.repository);

  Future<String> execute(
    Order order,
  ) async {
    return await repository.postOrder(order);
  }
}