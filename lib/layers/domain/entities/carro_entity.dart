class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  // Regra de negócio real da entidade
  double get valorReal => valor * qtdPortas;
}