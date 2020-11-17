import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/cei_data.dart';
import 'package:projeto_ceu_univesp/datas/uniceu_data.dart';



class UniceuScreen extends StatefulWidget {

  final UniceuData uniceu;

 UniceuScreen(this.uniceu);

  @override
  _UniceuScreenState createState() => _UniceuScreenState(uniceu);
}

class _UniceuScreenState extends State<UniceuScreen> {

  final UniceuData uniceu;

  _UniceuScreenState(this.uniceu);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

