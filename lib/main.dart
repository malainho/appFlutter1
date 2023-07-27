import 'package:flutter/material.dart';

void main() {
  variaveisSemTipo();
  variaveisDinamicas();
  variaveisNumerosInteiros();
  variaveisNumerosFracionarios();
  variaveisBoleanas();

  constantes();

  runApp(const MyApp());
}

void variaveisSemTipo(){
  print("VARIÁVEIS SEM TIPO DEFINIDO");
  // 1
  var num = 1;
  print(num.runtimeType);

  // ERRO
  // num = "Uma String";

  // 2
  var hex = 0xDEADBEEF;
  print(hex);
  print(hex.runtimeType);

  // 3
  // ERRO: Não aceita null como valor porque não foi definido que pode aceitar null
  // num = null;
  // Variáveis criadas com var não podem aceitar null
}

void variaveisDinamicas(){
  print("VARIÁVEIS DINÂMICAS");
  // 1
  dynamic xpto;
  xpto = 1;
  xpto = "Uma String";
  print(xpto);

  // 2
  // Todas as variáveis dinâmicas(dynamic) aceitam null porque não tem tipo
  xpto = null;
}

void variaveisNumerosInteiros() {
  print("VARIÁVEIS PARA NUMEROS INTEIROS");
  // 1
  int num = 5;
  print(num);

  // 2
  // ERRO
  // num = null;

  // 3
  int? num2 = 4;
  num2 = null;

  // 4
  // ERRO
  // int num3 = num2;

  // 5
  // ISSO PODE GERAR UM ERRO: NullPointException
  // int num3 = num2!;

  // 6
  int num3 = num2 ?? 0;
}

void variaveisNumerosFracionarios(){
  print("VARIÁVEIS PARA NUMEROS FRACIONÁRIOS");
  // 1
  double p = 3200.89;
  print(p);

  // 2
  // ERRO
  // p = null;

  // 3
  double? p2;
  p2 = 3200.90;
  p2 = null;
}

void variaveisBoleanas(){
  print("VARIÁVEIS BOOL");
  // 1
  bool casado = true;
  print(casado);

  // 2
  // ERRO
  // casado = null;

  // 3
  bool? casado2 = true;
  casado2 = null;
}

void cadeiasCarateres(){
  print("VARIÁVEIS DE CARATERES");
  // 1
  String a = 'QQ';
  String b = "Outra coisa";
  String c = "Coisa nova";
  print(a);
  print(b);
  print(c);

  // 2
  // ERRO
  // a = null;

  // 3
  String? d = "QQ";
  d = null;
}

void constantes(){
  print("CONSTANTES");
  // 1
  final String x = "QQ";

  // 2
  const String y = "QQ coisa";

  // 3
  // ERRO
  // y = "Outra coisa";

  // 4
  const String? z = null;
  // As constantes podem ser criadas para aceitar null mas depois não podemos alterar o valor.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}