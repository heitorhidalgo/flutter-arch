import '../../entities/carro_entity.dart';
import 'get_carros_por_cor.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC1234', qtdPortas: 4, valor: 50000);
    } else {
      return CarroEntity(placa: 'XYZ5678', qtdPortas: 2, valor: 20000);
    }
  }
}