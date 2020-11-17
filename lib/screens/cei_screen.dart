import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/cei_data.dart';



class CeiScreen extends StatefulWidget {

  final CeiData cei;

  CeiScreen(this.cei);

  @override
  _CeiScreenState createState() => _CeiScreenState(cei);
}

class _CeiScreenState extends State<CeiScreen> {

  final CeiData cei;

  _CeiScreenState(this.cei);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

