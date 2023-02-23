import 'package:doggy/providers/firebase/firebase_service.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
   
  const PerfilScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const _FotoPerfil(),
            const Text('Carlos Castillo', style: TextStyle(fontSize: 18)),
            SizedBox(height: size.height*0.018),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Icon(Icons.pets, color: AppTheme.primary),
                SizedBox(width: size.width *0.012),
                const Text('Tus Mascotas', style: TextStyle(color: AppTheme.primary, fontFamily: 'AveriaSansLibre', fontSize: 22)),
              ],
            ),
            SizedBox(height: size.height*0.03),
            Expanded(
              child: SizedBox(
                width: size.width * 0.7,
                child: FutureBuilder(
                  future: getMascotas(),
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index){
            
                          return CustomMascota(
                            imagen: snapshot.data?[index]['imagen'],
                            nombre: snapshot.data?[index]['nombre'],
                            index: index,
                          );
            
                        }
                      );
                    }else{
                      return const Center(child: CircularProgressIndicator());
                    }
            
                  }
                ),
              ),
            )
          ],
         )
    );
  }
}



class _FotoPerfil extends StatelessWidget {


  const _FotoPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children:[
          const CircleAvatar(
            maxRadius: 70,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero
                ),
                onPressed: (){},
                child: const Icon(Icons.edit),
              ),
            )
          )
        ],
      ),
    );
  }
}