import 'package:flutter_app/modules/order/domain/order.dart';
import 'package:flutter_app/modules/order/domain/order_repository.dart';
import 'package:flutter_app/modules/order/domain/post_order.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'order_test.mocks.dart';

@GenerateMocks([OrderRepository, Order])
void main() {
  PostOrder? usecase;
  MockOrderRepository? mockOrderRepository;

  setUp(() {
    mockOrderRepository = MockOrderRepository();
    usecase = PostOrder(mockOrderRepository as OrderRepository);
  });

  final MockOrder order = MockOrder();

  group('Order', () {
    test(
    'Create a new order', () async {
      when(mockOrderRepository!.postOrder(order))
            .thenAnswer((_) async => 'Created');

        final result = await usecase!.execute(order);
        expect(result, 'Created');

        verify(mockOrderRepository!.postOrder(order));
      },
    );
  });
}
