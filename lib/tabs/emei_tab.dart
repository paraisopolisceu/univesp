import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/nucleo_data.dart';



class EmeiScreen extends StatefulWidget {

  final NucleoData nucleo;

  EmeiScreen(this.nucleo);

  @override
  _EmeiScreenState createState() => _EmeiScreenState(nucleo);
}

class _EmeiScreenState extends State<EmeiScreen> {

  final NucleoData nucleo;

  _EmeiScreenState(this.nucleo);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

