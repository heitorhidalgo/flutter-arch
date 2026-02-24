import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // Simulação de resposta de uma API (JSON/Map)
    var json = {
      "placa": "ABC1234",
      "quantidade_de_portas": 2,
      "valor_final": 5000.0
    };

    // Usamos o DTO para converter o JSON para um objeto que o domínio entende
    return CarroDto.fromMap(json);
  }
}