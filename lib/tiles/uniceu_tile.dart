import 'package:flutter/material.dart';

import 'package:projeto_ceu_univesp/datas/uniceu_data.dart';
import 'package:projeto_ceu_univesp/screens/uniceu_screen.dart';




class UniceuTile extends StatelessWidget {
  final String type;
  final UniceuData uniceu;

  UniceuTile(this.type, this.uniceu);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>UniceuScreen(uniceu))
        );
      },
      child: Card(
          child: type == "grid"
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 0.8,
                child: Image.network(
                  uniceu.image[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        uniceu.title,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
              : Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Image.network(
                  uniceu.image[0],
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        uniceu.title,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
