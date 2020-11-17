import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/datas/nucleo_data.dart';
import 'package:projeto_ceu_univesp/screens/emei_screen.dart';



class EmeiTile extends StatelessWidget {
  final String type;
  final NucleoData nucleo;

  EmeiTile(this.type, this.nucleo);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>EmeiScreen(nucleo))
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
                  nucleo.image[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        nucleo.title,
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
                  nucleo.image[0],
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
                        nucleo.title,
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
