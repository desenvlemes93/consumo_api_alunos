import 'dart:convert';

import 'package:http/http.dart';

import '../models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  Future<List<Aluno>> buscarTodos() async {
    final alunoReponse =
        await http.get(Uri.parse('http://localhost:8080/alunos'));

    final todosAlunos = jsonDecode(alunoReponse.body);

    return todosAlunos
        .map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap))
        .toList();
  }

  Future<Aluno> buscarPorId(int id) async {
    final alunoReponse =
        await http.get(Uri.parse('http://localhost:8080/alunos/$id'));
    return Aluno.fromJson(alunoReponse.body);
  }
}
