import '../../entities/carro_entity.dart';
import '../../repositories/get_carros_por_cor_repository.dart';
import 'get_carros_por_cor.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _repository;

  GetCarrosPorCorUseCaseImp(this._repository);

  @override
  CarroEntity call(String cor) {
    return _repository(cor);
  }
}