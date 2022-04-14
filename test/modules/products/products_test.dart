import 'package:flutter_app/modules/products/domain/get_products_by_name.dart';
import 'package:flutter_app/modules/products/domain/get_promotions.dart';
import 'package:flutter_app/modules/products/domain/products.dart';
import 'package:flutter_app/modules/products/domain/products_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'products_test.mocks.dart';

@GenerateMocks([ProductsRepository, Products])
void main() {
  final MockProducts products = MockProducts();
  MockProductsRepository? mockProductsRepository;

  setUp(() {
    mockProductsRepository = MockProductsRepository();
  });

  group('Products', () {
    test(
      'Get products by name, ordered by criteria',
      () async {
        GetProductsByName usecase = GetProductsByName(mockProductsRepository as ProductsRepository);
        const name = 'anilha';
        const orderBy = 'lowestPrice';

        when(mockProductsRepository!.getProductsByName(name, orderBy))
            .thenAnswer((_) async => [products]);

        final result = await usecase.execute(name: name, orderBy: orderBy);
        expect(result, isA<List<Products>>());

        verify(mockProductsRepository!.getProductsByName(name, orderBy));
      },
    );

    test(
      'Get promotions',
      () async {
        GetPromotions usecase = GetPromotions(mockProductsRepository as ProductsRepository);

        when(mockProductsRepository!.getPromotions())
            .thenAnswer((_) async => [products]);

        final result = await usecase.execute();
        expect(result, isA<List<Products>>());

        verify(mockProductsRepository!.getPromotions());
      },
    );
  });
}
