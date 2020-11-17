import 'package:cloud_firestore/cloud_firestore.dart';

class CeiData{

   String cei;
  String id;

  String title;

  String description;


  List image;


  CeiData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    image = snapshot.data["image"];
  }

}