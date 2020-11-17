import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewPostagemScreen extends StatelessWidget {
  final DocumentSnapshot snapshot;

  NewPostagemScreen(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Postagem'),
          centerTitle: true,
        ),
        body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance
              .collection("postagem/noticias/noticias")
              .getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (BuildContext context, int i) {
                    var doc = snapshot.data.documents[i];
                    print(snapshot.data.documents[0]['title'].toString());
                    return Container(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              color: Colors.grey[100],
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Image.network(
                                          snapshot.data.documents[i]['url']
                                              .toString(),
                                          height: 200,
                                          fit: BoxFit.fill),
                                      Text(
                                        snapshot.data.documents[i]['title']
                                            .toString(),
                                        maxLines: 6,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      ButtonTheme.bar(
                                          child: ButtonBar(
                                        children: <Widget>[
                                          FlatButton(
                                            child: const Text('Like'),
                                            onPressed: () {
                                              /* ... */
                                            },
                                          ),
                                          Container(
                                            child: FlatButton(
                                              child: const Text('Dislike'),
                                              onPressed: () {
                                                /* ... */
                                              },
                                            ),
                                          ),
                                        ],
                                      ))
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => modalCreate(context),
          /*onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NewPostagemScreen())),*/
          tooltip: 'Adicionar novo',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

modalCreate(BuildContext context) {
  var form = GlobalKey<FormState>();

  var titulo = TextEditingController();
  var descricao = TextEditingController();
  var url = TextEditingController();

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Form(
              key: form,
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text('Descrição'),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Insira a descrição',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          controller: titulo,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Este campo não pode ser vazio';
                            }
                          }),
                      SizedBox(height: 20),
                      Text('Título'),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ('Opcional'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        controller: descricao,
                      ),
                      SizedBox(height: 20),
                      Text('Url'),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ('Insira o endereço da imagem'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        controller: url,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () async {
                  if (form.currentState.validate()) {
                    await Firestore.instance
                        .collection('postagem/noticias/noticias')
                        .add({
                      'title': titulo.text,
                      'descricao': descricao.text,
                      'url': url.text,
                    });
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Salvar'),
              ),
            ]);
      });
}
