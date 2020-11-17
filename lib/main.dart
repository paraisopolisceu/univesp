import 'package:flutter/material.dart';
import 'package:projeto_ceu_univesp/models/user_model.dart';
import 'package:projeto_ceu_univesp/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
          title: 'Atividades CEU',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Color.fromARGB(255, 61, 100, 237)
          ),
          debugShowCheckedModeBanner: false ,
          home: HomeScreen()
      ),
    );
  }
}

