import 'package:cloud_firestore/cloud_firestore.dart';

class NucleoData{
  String nucleo;
  String id;

  String description;
  String title;

  List image;

  NucleoData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    description = snapshot.data["description"];
    title = snapshot.data["title"];
    image = snapshot.data["image"];
  }

}