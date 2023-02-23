import 'package:doggy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/nav_provider.dart';


class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final navProvider = Provider.of<NavProvider>(context);    
    final indexSeleccionado = navProvider.opcionSeleccionada;
    
    if(indexSeleccionado == 1 ){
      return Row(
        children: const[
          Image(image: AssetImage('assets/puente-arcoiris.png'), fit: BoxFit.cover, height: 60),
          SizedBox(width: 20),
          Text('| Servicios', style: TextStyle(color: Color(0xffE2AF6E), fontFamily: 'AveriaSansLibre', fontSize: 22)) 
        ],
      );
    }else if (indexSeleccionado == 2){
      return Row(
        children: const[
          Image(image: AssetImage('assets/puente-arcoiris.png'), fit: BoxFit.cover, height: 60),
          SizedBox(width: 20,),
          Text('| MarketPet', style: TextStyle(color: Color(0xffE2AF6E), fontFamily: 'AveriaSansLibre', fontSize: 22)) 
        ],
      );
    }else if (indexSeleccionado == 3){
      return Row(
        children: const[
          Image(image: AssetImage('assets/puente-arcoiris.png'), fit: BoxFit.cover, height: 60),
          SizedBox(width: 20,),
          Text('| Entrenamiento', style: TextStyle(color: Color(0xffE2AF6E), fontFamily: 'AveriaSansLibre', fontSize: 22)) 
        ],
      );
    }else if (indexSeleccionado == 4){
      return Row(
        children: [
          const Image(image: AssetImage('assets/puente-arcoiris.png'), fit: BoxFit.cover, height: 60),
          const SizedBox(width: 20,),
          const Text('| Perfil', style: TextStyle(color: Color(0xffE2AF6E), fontFamily: 'AveriaSansLibre', fontSize: 22)),
          Expanded(child: Container()),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add, color: AppTheme.primary,)),
          IconButton(onPressed: (){ Navigator.pushNamed(context, '/login');}, icon: const Icon(Icons.exit_to_app, color: AppTheme.primary))
        ],
      );
    }
    else{
      final size = MediaQuery.of(context).size;
      return Row(
        children: [
          const Image(image: AssetImage('assets/puente-arcoiris.png'), height: 60),
          SizedBox(width: size.width * 0.35,),
          const ButtonHeadSocial( icono: Icons.add),
          const ButtonHeadSocial( icono: Icons.search),
          FloatingActionButton(
            heroTag: 'button_avatar',
            backgroundColor: const Color.fromARGB(33, 255, 255, 255),
            elevation: 0.8,
            mini: true,
            onPressed: (){
              Navigator.pushNamed(context, '/perfil_m');
            },
            child: const CircleAvatar(backgroundImage: NetworkImage('https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg'),),
          ),
        ],
      );
    }
  }
}


class ButtonHeadSocial extends StatelessWidget {

  final IconData icono;

  const ButtonHeadSocial({
    Key? key, required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(32, 53, 53, 53),
        shape: CircleBorder(),
      ),
      child: IconButton(
        onPressed: (){}, 
        icon: Icon(icono, color: const Color.fromARGB(255, 255, 255, 255)),
        splashRadius: 25,
      ),
    );
  }
}