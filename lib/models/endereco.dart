import 'dart:convert';

import 'package:consumo_api_alunos/models/telefone.dart';

import 'cidade.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco(
      {required this.rua,
      required this.numero,
      required this.cep,
      required this.cidade,
      required this.telefone});

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? '',
      cep: map['CEP'] ?? '',
      cidade: Cidade.fromMap(map['cidade'] ?? <String, dynamic>{}),
      telefone: Telefone.fromMap(map['telefone'] ?? <String, dynamic>{}),
    );
  }

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, CEP: $cep, cidade: $cidade, telefone: $telefone)';
  }
}
