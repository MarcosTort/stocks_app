// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:stocks_repository/stocks_repository.dart';

void main() {
  group('StocksRepository', () {
    test('can be instantiated', () {
      expect(StocksRepository(), isNotNull);
    });
  });
}
