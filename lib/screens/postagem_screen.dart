import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/postagem_data.dart';



class PostagemScreen extends StatefulWidget {

  final PostagemData postagem;

  PostagemScreen(this.postagem);

  @override
  _PostagemScreenState createState() => _PostagemScreenState(postagem);
}

class _PostagemScreenState extends State<PostagemScreen> {

  final PostagemData postagem;

  _PostagemScreenState(this.postagem);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

