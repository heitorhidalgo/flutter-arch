import 'package:dartz/dartz.dart'; //
import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryMock implements GetCarrosPorCorRepository {
  @override
  Either<Exception, CarroEntity> call(String cor) {
    return Right(CarroEntity(placa: 'ANY', qtdPortas: 2, valor: 1000));
  }
}

void main() {
  final repository = GetCarrosPorCorRepositoryMock();
  final useCase = GetCarrosPorCorUseCaseImp(repository);

  test('Deve retornar uma instancia de carro (encapsulada em um Right)', () {
    var result = useCase('azul');

    expect(result.isRight(), true);

    result.fold(
          (error) => fail('Deveria ter retornado sucesso, mas retornou erro'),
          (success) => expect(success, isA<CarroEntity>()),
    );
  });
}