import 'package:flutter_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_arch/layers/data/dtos/carro_dto.dart';
import 'package:flutter_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:flutter_arch/layers/domain/entities/carro_entity.dart'; //
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorDataSourceMock implements GetCarrosPorCorDataSource {
  @override
  CarroDto call(String cor) {
    return CarroDto(placa: 'ABC', quantidadeDePortas: 2, valorFinal: 1000);
  }
}

void main() {
  test('Deve retornar um carro (Right) ao chamar o repository', () {
    final dataSource = GetCarrosPorCorDataSourceMock();

    final repository = GetCarrosPorCorRepositoryImp(dataSource);

    var result = repository('qualquer cor');

    expect(result.isRight(), true);

    result.fold(
          (error) => fail('Deveria ter retornado sucesso'),
          (success) {
        expect(success, isA<CarroEntity>()); //
        expect(success.placa, 'ABC'); //
      },
    );
  });
}