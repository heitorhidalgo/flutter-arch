import 'package:flutter_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:flutter_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';
import 'package:flutter_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:get_it/get_it.dart';
import '../../layers/data/datasources/get_carros_por_cor_datasource.dart';
import '../../layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import '../../layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import '../../layers/domain/repositories/get_carros_por_cor_repository.dart';
import '../../layers/presentation/controllers/carro_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // DataSources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
            () => GetCarrosPorCorLocalDataSourceImp());

    // Repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
            () => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
            () => SalvarCarroFavoritoRepositoryImp());

    // UseCases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
            () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
            () => SalvarCarroFavoritoUseCaseImp(getIt()));

    // Controllers
    // Factory cria uma nova instância toda vez que é chamado
    getIt.registerFactory<CarroController>(() => CarroController(getIt(), getIt()));
  }
}