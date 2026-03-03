import 'package:dartz/dartz.dart';
import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../datasources/get_carros_por_cor_datasource.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _dataSource;
  GetCarrosPorCorRepositoryImp(this._dataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    try {
      var result = _dataSource(cor);
      return Right(result); // Sucesso: Retorna o dado envolvido em Right
    } catch (e) {
      return Left(Exception('Erro no repositório')); // Falha: Retorna a exceção envolvida em Left
    }
  }
}