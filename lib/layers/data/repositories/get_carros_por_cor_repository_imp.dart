import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../datasources/get_carros_por_cor_datasource.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _dataSource;

  GetCarrosPorCorRepositoryImp(this._dataSource);

  @override
  CarroEntity call(String cor) {
    // O repositório agora apenas delega a chamada ao DataSource
    return _dataSource(cor);
  }
}