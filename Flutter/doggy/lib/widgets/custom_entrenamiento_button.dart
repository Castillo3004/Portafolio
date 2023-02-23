import 'package:flutter/material.dart';

final _coloresAleatorios = [
  const Color(0xffB0D2E5),
  const Color(0xffD0B167),
  const Color(0xffE0775A)

];

class CustomEntrenamientoButton extends StatelessWidget {

  final String imageAsset;
  final String titleCard;
  final String estado; 
  final String n_temas;
  final String n_semanas;

  final int index; 

  
  const CustomEntrenamientoButton({
    Key? key, 
    required this.imageAsset, 
    required this.titleCard, 
    required this.estado, 
    required this.n_temas, 
    required this.n_semanas, 
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;  


    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: SizedBox(
        height: size.height * 0.15,
        width: size.width * 0.9,
        child: ElevatedButton(
          onPressed: (){

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _coloresAleatorios[index % _coloresAleatorios.length],
            elevation: 0,
            animationDuration: Duration.zero,
            side: const BorderSide(width: 0, color: Colors.transparent),
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      child: Text(estado, style: const TextStyle(color: Colors.black45),),
                    ),
                  ),
                  Text(titleCard,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                  Text('$n_temas temas | $n_semanas semanas', style: const TextStyle(color: Colors.black54))
                ],
              ),
              Image(image: NetworkImage(imageAsset)),
            ],
          )
        ),
      ),
    );
  }
}