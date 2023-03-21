import 'package:consumo_api_alunos/consumo_api_alunos.dart'
    as consumo_api_alunos;
import 'package:consumo_api_alunos/repositories/aluno_repository.dart';

Future<void> main(List<String> arguments) async {
  final alunoRepository = AlunoRepository();

  final printAlunos = await alunoRepository.buscarTodos();
  print(printAlunos);

  var tee = printAlunos[1].cursos;
  var telefoneee = printAlunos[1].endereco;
  for (var telefone in tee) {
    print(tee);
    print([telefoneee]);
  }
}
