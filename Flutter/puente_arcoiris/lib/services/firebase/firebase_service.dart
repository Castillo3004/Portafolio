// Aqui se crea todo el CRUD 

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;


Future<List> getFuneraria() async {

  List funeraria = [];
  
  CollectionReference collectionReferenceUsers = db.collection('funeraria'); // Referenciar a la firestore 

  QuerySnapshot queryFuneraria = await collectionReferenceUsers.get(); // traer de la coleccion de Firestore


  for (var element in queryFuneraria.docs) {  // Instancia en el docs para traer todos los elementos
    funeraria.add(element.data()); // agregarmos al array antes creado la data que se trajo
  }

  return funeraria;

}

Future<List> getPerruqueria() async{

  List perruqueria = [];

  CollectionReference collectionReferencePerruqueria = db.collection('perruqueria');

  QuerySnapshot queryPerruqueria = await collectionReferencePerruqueria.get();

  for(var element in queryPerruqueria.docs){
    perruqueria.add(element.data());
  }
  return perruqueria;


}

Future<List> getTienda() async{

  List tienda = [];

  CollectionReference collectionReferenceTienda = db.collection('tienda');

  QuerySnapshot queryTienda = await collectionReferenceTienda.get();

  for(var element in queryTienda.docs){
    tienda.add(element.data());
  }
  return tienda;
}

Future<List> getPerfil() async {
  
  List perfil = [];

  CollectionReference collectionReferencePerfil = db.collection('perfil');
  QuerySnapshot queryPerfil = await collectionReferencePerfil.get();

  for(var element in queryPerfil.docs){
    perfil.add(element.data());
  }
  return perfil;


}


Future<void> addUsers(String name, String raza, int edad, String enfermedad, String descripcion) async {

  await db.collection('salud').add({"nombre": name,  "raza": raza, "edad": edad, "enfermedad": enfermedad, "descripcion": descripcion});

}

Future<void> addFunReg(String nombre, String raza, int edad, String paquete, double peso, String descripcion) async{

  await db.collection('FunerariaPaquete').add({"nombre": nombre, "raza": raza, "paquete": paquete,"edad": edad, "peso":peso, "descripcion": descripcion});

}