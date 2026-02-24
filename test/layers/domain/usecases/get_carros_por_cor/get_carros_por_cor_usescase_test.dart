import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:flutter_test/flutter_test.dart';

// Criamos um Mock manual para o repositório
class GetCarrosPorCorRepositoryMock implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    return CarroEntity(placa: 'ANY', qtdPortas: 2, valor: 1000);
  }
}

void main() {
  // Agora passamos o Mock para o construtor
  final repository = GetCarrosPorCorRepositoryMock();
  final useCase = GetCarrosPorCorUseCaseImp(repository);

  test('Deve retornar uma instancia de carro', () {
    var result = useCase('azul');
    expect(result, isA<CarroEntity>());
  });
}