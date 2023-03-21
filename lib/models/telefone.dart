import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({required this.ddd, required this.telefone});

  //Metodo que pega o nosso objeto Telefone e transofmra em uma Objeto de Map<String, dynamic>
  //Passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  //Metodo que paga o Map<String , dynamic e transforma em um Json Pleo ppacote dar: cnoverte>
  //Passo 2
  String toJson() => jsonEncode(toMap());

// Segundo passo para Dessertilização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'],
      telefone: map['telefone'],
    );
  }

//Passo 1
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
