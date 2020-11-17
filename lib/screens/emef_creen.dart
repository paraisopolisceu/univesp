import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/emef_data.dart';



class EmefScreen extends StatefulWidget {

  final EmefData emef;

  EmefScreen(this.emef);

  @override
  _EmefScreenState createState() => _EmefScreenState(emef);
}

class _EmefScreenState extends State<EmefScreen> {

  final EmefData emef;

  _EmefScreenState(this.emef);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

