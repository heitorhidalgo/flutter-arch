import 'package:flutter_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Deve retornar um carro independente da cor', () {
    GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();
    var result = repository('qualquer cor');
    expect(result, isNotNull);
  });
}