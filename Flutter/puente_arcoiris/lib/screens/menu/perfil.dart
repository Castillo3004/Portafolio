import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class PerfilScreen extends StatelessWidget {
   
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _AppBarPersonalizado(),
        backgroundColor: AppTheme.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: AssetImage('assets/rectangle26.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Tobi', style: TextStyle(fontFamily: 'Comic Neue',fontSize: 24, fontWeight: FontWeight.bold)),
                      Text('3 años', style: TextStyle(fontFamily: 'Comic Neue',fontSize: 20 )),
                      Text('Blanco', style: TextStyle(fontFamily: 'Comic Neue',fontSize: 20 )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Más sobre mi ...', style: TextStyle(fontFamily: 'Comic Neue'),),
                ),
              ),
            ),
          ),
          const Expanded(child: GridImagesSocial()),
        ],
      ),
    );
  }
}

class GridImagesSocial extends StatelessWidget {
  const GridImagesSocial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPerfil(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          
          return GridView.builder(
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ), 
            itemBuilder:(context, index){
              return Padding(
                padding: const EdgeInsets.all(3),
                child: Image(image: NetworkImage(snapshot.data?[index]['imagen']), fit: BoxFit.cover,),
              );
            }
          );
          
        }else{
          return const Center(child: CircularProgressIndicator());
        }

      }
    );
  }
}


class _AppBarPersonalizado extends StatelessWidget{

  @override
  Widget build(BuildContext context) { 

    // snapshot.then((id) =>print('${id[0]['titulo']})'));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        Text('Perfil', style:TextStyle(color: Colors.black, fontFamily: 'Comic Neue')),
      ],
    );
  }


}

