import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';


// Criando um Mock manual do repositório para o teste
class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carro) async {
    return carro.valor > 0;
  }

void main() {
  test('Espero que salve o carro com sucesso', () async {
    var repository = SalvarCarroFavoritoRepositoryImp();
    var useCase = SalvarCarroFavoritoUseCaseImp(repository);
    var carro = CarroEntity(placa: 'ABC', qtdPortas: 2, valor: 1);

    var result = await useCase(carro);
    expect(result, true);
  });
  }
}