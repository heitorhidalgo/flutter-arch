import '../../dtos/carro_dto.dart';
import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap({
        "placa": "ABC1234",
        "quantidade_de_portas": 4,
        "valor_final": 50000.0
      });
    } else {
      return CarroDto.fromMap({
        "placa": "XYZ5678",
        "quantidade_de_portas": 2,
        "valor_final": 20000.0
      });
    }
  }
}