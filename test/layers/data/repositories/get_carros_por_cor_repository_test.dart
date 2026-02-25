import 'package:flutter_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_arch/layers/data/dtos/carro_dto.dart';
import 'package:flutter_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';

// 1. Criamos o Mock do DataSource
class GetCarrosPorCorDataSourceMock implements GetCarrosPorCorDataSource {
  @override
  CarroDto call(String cor) {
    return CarroDto(placa: 'ABC', quantidadeDePortas: 2, valorFinal: 1000);
  }
}

void main() {
  test('Deve retornar um carro ao chamar o repository', () {
    // 2. Instanciamos o Mock
    final dataSource = GetCarrosPorCorDataSourceMock();

    // 3. Injetamos o Mock no Repositório
    final repository = GetCarrosPorCorRepositoryImp(dataSource);

    var result = repository('qualquer cor');

    expect(result, isNotNull);
    expect(result.placa, 'ABC');
  });
}