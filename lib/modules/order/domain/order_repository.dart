import 'package:flutter_app/modules/order/domain/order.dart';

abstract class OrderRepository {
  Future<String> postOrder(Order order);
}