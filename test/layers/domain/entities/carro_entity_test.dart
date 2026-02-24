import 'package:flutter_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carro = CarroEntity(placa: 'ABC', qtdPortas: 2, valor: 1000);
    expect(carro, isNotNull);
  });

  test('Espero que o valor real seja 2000', () {
    CarroEntity carro = CarroEntity(placa: 'ABC', qtdPortas: 2, valor: 1000);
    expect(carro.valorReal, 2000);
  });
}