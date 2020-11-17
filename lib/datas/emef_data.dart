import 'package:cloud_firestore/cloud_firestore.dart';

class EmefData{

  String emef;
  String id;

  String title;

  String description;


  List image;


  EmefData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    image = snapshot.data["image"];
  }

}