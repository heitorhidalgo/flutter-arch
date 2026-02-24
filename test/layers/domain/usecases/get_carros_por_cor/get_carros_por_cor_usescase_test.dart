import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('azul');
    expect(result, isA<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('vermelho');
    expect(result.qtdPortas, 4);
  });
}