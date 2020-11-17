import 'package:cloud_firestore/cloud_firestore.dart';

class PostagemData{
  String noticias;
  String id;

  String description;
  String title;

  List image;

  PostagemData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    description = snapshot.data["description"];
    title = snapshot.data["title"];
    image = snapshot.data["image"];
  }

}