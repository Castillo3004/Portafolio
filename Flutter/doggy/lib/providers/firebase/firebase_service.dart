import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

// trae datos para entrenamiento

 Future<List> getEntrenamiento() async{

  List entrenamiento = [];

  CollectionReference collectionReferenceEntren = db.collection('entrenamiento');
  
  QuerySnapshot queryEntrenamiento = await collectionReferenceEntren.get();

  for (var element in queryEntrenamiento.docs){
    entrenamiento.add(element.data());
  }
  return entrenamiento;

}

Future<List> getPeluqueria() async{

  List peluqueria =[];

  CollectionReference collectionReferencePeluq = db.collection('peluqueria');
  QuerySnapshot queryPeluqueria = await collectionReferencePeluq.get();

  for(var element in queryPeluqueria.docs){
    peluqueria.add(element.data());
  }
  return peluqueria;

}

Future<List> getVeterinaria() async{

  List veterinaria = [];

  CollectionReference collectionReferenceVet = db.collection('veterinaria');
  QuerySnapshot queryVeterinaria = await collectionReferenceVet.get();

  for(var element in queryVeterinaria.docs){
    veterinaria.add(element.data());
    
  }
  return veterinaria;

}

Future<List> getMarket() async{

  List market = [];

  CollectionReference collectionReferenceMarket = db.collection('market');
  QuerySnapshot queryMarket = await collectionReferenceMarket.get();

  for(var element in queryMarket.docs){
    market.add(element.data());
  }
  return market;


}

Future<List> getSocial() async{

  List social = [];

  CollectionReference collectionReferenceSocial = db.collection('social');
  QuerySnapshot querySocial = await collectionReferenceSocial.get();

  for(var element in querySocial.docs){
    social.add(element.data());
  }
  return social;

}

Future<List> getPerfil() async{

  List perfil = [];

  CollectionReference collectionReferencePerfil = db.collection('fotosPerfil');
  QuerySnapshot queryFotosPerfil = await collectionReferencePerfil.get();

  for(var element in queryFotosPerfil.docs){
    perfil.add(element.data());
  }
  return perfil;

}

Future<List> getMascotas() async{

  List mascotas = [];

  CollectionReference collectionReferenceMascotas = db.collection('mascotas');
  QuerySnapshot queryMascotas = await collectionReferenceMascotas.get();

  for(var element in queryMascotas.docs){
    mascotas.add(element.data());
  }
  return mascotas;

}

// Add

Future<void> agregarFuneral(String nombre, String raza, int edad, String fecha, String plan) async{
  await db.collection('Funeraria').add({"nombre": nombre, "raza": raza, "edad": edad, "fecha":fecha, "plan": plan});
}


