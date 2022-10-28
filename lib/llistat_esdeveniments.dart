import 'package:examen_calendari/editar_esdeveniment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';

class Esdeveniment {
  final DateTime? horaInici, horaFinal;
  final String titol;
  final String? descripcio;

  Esdeveniment(
      {this.horaInici, this.horaFinal,
        required this.titol,
        this.descripcio});
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final esdeveniments = <Esdeveniment>[
    Esdeveniment(
        titol: "Festiu",
        descripcio: "Tots els Sants"),
    Esdeveniment(
        titol: "Festiu",
        descripcio: "Dia de la Constitució"),
    Esdeveniment(
        titol: "Festiu",
        descripcio: "Inmaculada Concepció"),
    Esdeveniment(
        titol: "Festiu",
        descripcio: "2n día lliure disposició"),
    Esdeveniment(
        titol: "Examen",
        descripcio: "Examen dispositius mòbils"),
    Esdeveniment(
        titol: "Entrega",
        descripcio: "Entrega projecte inicial"),
    Esdeveniment(
        titol: "Entrega",
        descripcio: "Pràctica programació serveis"),
    Esdeveniment(
        titol: "Entrega",
        descripcio: "Planificació inicial síntesi"),
    Esdeveniment(
        titol: "Examen",
        descripcio: "Test sistemes gestió"),
    Esdeveniment(
        titol: "Entrega",
        descripcio: "Exercicis dispositius mòbils"),
    Esdeveniment(
        titol: "Dinar familiar",
        descripcio: "Aniversari tia Julieta. Comprar regal!!"),
    Esdeveniment(
        titol: "Concert",
        descripcio: "Músics al carrer de Gavà"),
    Esdeveniment(
        titol: "Hackaton",
        descripcio: "Reptes ODS 2022"),
  ];

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      LlistatEsdevenimentsWidget(llistaEsdeveniments: widget.esdeveniments),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'Afegir esdeveniment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LlistatEsdevenimentsWidget extends StatelessWidget {
  const LlistatEsdevenimentsWidget({
    Key? key,
    required this.llistaEsdeveniments,
  }) : super(key: key);

  final List<Esdeveniment> llistaEsdeveniments;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (Esdeveniment lEsdeveniment in llistaEsdeveniments)
          EsdevenimentWidget(lEsdeveniment)
      ],
    );
  }
}

class EsdevenimentWidget extends StatelessWidget {
  const EsdevenimentWidget(
      this.esdeveniment, {
        Key? key,
      }) : super(key: key);

  final Esdeveniment esdeveniment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          "${esdeveniment.titol}: ${esdeveniment.descripcio}"),
    );
  }
}
