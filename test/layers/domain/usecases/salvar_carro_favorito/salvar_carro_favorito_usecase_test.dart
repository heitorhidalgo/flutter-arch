import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryMock implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carro) async => true;
}

void main() { // Verifique se essa linha existe!
  test('Deve salvar com sucesso', () async {
    final repository = SalvarCarroFavoritoRepositoryMock();
    final useCase = SalvarCarroFavoritoUseCaseImp(repository);
    final carro = CarroEntity(placa: 'ABC', qtdPortas: 2, valor: 10);

    final result = await useCase(carro);
    expect(result, true);
  });
}