void main() {
  List<String> pacientes = [
    'Manoel Silva|12|estudante|MG',
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Fernando Verne|35|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  var totalPacientesMaiorQue20 = 0;
  // 1 -  Varrer a Lista
  for (var i = 0; i < pacientes.length; i++) {
    // Recuperando item
    var pac = pacientes[i];
    // 2 - Quebrar o item
    var pacArray = pac.split('|');
    // Verifiquei se é > 20
    if (int.parse(pacArray[1]) > 20) {
      // Somei 1
      totalPacientesMaiorQue20++;
    }
  }
  // imprimir
  print('Total de Pacientes com mais de 20 anos $totalPacientesMaiorQue20');

  print("separação por familia");

  var rahman = "Rahman";
  var silva = "Silva";
  var verne = "Verne";

  var familiaRahman = [];
  var familiaSilva = [];
  var familiaVerne = [];

   //! aqui varre a lista
  for (int i = 0; i < pacientes.length; i++) {
    var paciente = pacientes[i];

  //! criando um array de paciente string
    var pacienteArray = paciente.split("|");

  //!pegando primeiro elemento do array nome completo no indice 0
    var pacienteCompleto = pacienteArray[0];

  //!criando um array de nomes completos separado por espaço (isso nao e pra iniciante)
    var pacienteNomeCompletoArray = pacienteCompleto.split(" ");

  //! pegando segundo nome do array ou seja primeiro seria nome segundo o sobrenome por isso posicao 1
    var sobrenome = pacienteNomeCompletoArray[1];


   //! adicionando nome por familia por isso a declaracao da familia tal []
    if (sobrenome == rahman) {
      familiaRahman.add(pacienteCompleto);
    }
    if (sobrenome == silva) {
      familiaSilva.add(pacienteCompleto);
    }
    if (sobrenome == verne) {
      familiaVerne.add(pacienteCompleto);
    }
    
  }
  //! imprimindo as familias
    print(familiaRahman);
    print(familiaSilva);
    print(familiaVerne);
}