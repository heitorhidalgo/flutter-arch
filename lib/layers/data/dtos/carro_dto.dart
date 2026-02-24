import '../../domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
    placa: placa,
    qtdPortas: quantidadeDePortas,
    valor: valorFinal,
  );

  // Converte um Map (JSON) vindo da API para o nosso Objeto CarroDto
  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidade_de_portas'],
      valorFinal: map['valor_final'],
    );
  }

  // Converte o nosso Objeto CarroDto para um Map (JSON) para enviar para a API
  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'quantidade_de_portas': quantidadeDePortas,
      'valor_final': valorFinal,
    };
  }
}