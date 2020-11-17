import 'package:flutter/material.dart';

class AddPostagemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 61, 100, 237)
          ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Nova Postagem")),
        body: NovaPostagem(),
      ),
    );
  }
}

class NovaPostagem extends StatefulWidget {

  @override
  _NovaPostagemState createState() => _NovaPostagemState();
}
class _NovaPostagemState extends State<NovaPostagem> {
  final _formKey = GlobalKey<FormState>();
  var titulo = TextEditingController();
  var descricao = TextEditingController();
  var url = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Titulo'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ex. Natação',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      controller: titulo,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Este campo não pode ser vazio';
                        }
                      }
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Descrição'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: ('Opcional'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: descricao,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Url'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '(Opcional)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: url,
                  ),
                ),
                FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancelar'),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                    child: Text('Salvar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
