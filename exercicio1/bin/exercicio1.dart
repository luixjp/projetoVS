import 'dart:io';

void main(List<String> arguments) {
  print('Bem vindo ao Exercício 1');

  print('Digite a sua idade!');
  var sIdade = stdin.readLineSync() ?? '0';
  var idade = int.parse(sIdade);

  if (idade >= 18) {
    print('Parabéns, você é maior de idade!');

    print('Você tem CNH? (S/N)');
    var CNH = stdin.readLineSync() ?? 'N';
    CNH = CNH.toUpperCase();

    print('Você tem Carro ou Moto? (S/N)');
    var veiculo = stdin.readLineSync() ?? 'N';
    veiculo = veiculo.toUpperCase();

    if ((CNH == 'S' || CNH == 'SIM') && (veiculo == 'S' || veiculo == 'SIM')) {
      print('Parabéns você pode dirrigir seu veículo!');
    } else {
      print('Para dirrigir seu veículo você precisa comprá-lo ou tirar carta!');
    }
  } else {
    print('Você ainda é muito novo! Volte mais tarde!');
  }
}
