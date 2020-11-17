import 'package:cloud_firestore/cloud_firestore.dart';

class UniceuData{

  String uniceu;
  String id;

  String title;

  String description;


  List image;


  UniceuData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    image = snapshot.data["image"];
  }

}