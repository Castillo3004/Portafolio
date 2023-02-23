
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   
  final String imageUrl;
  final String? nameCard;
  final String backgroundImage;

  const CustomCardType2({
    Key? key, 
    required this.imageUrl,
    this.nameCard, 
    required this.backgroundImage
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:[
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 20),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(backgroundImage),
                ),
              ),
              const Text('Usuario 1')
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Consequat culpa laborum non deserunt sint.', style: TextStyle(fontSize: 14),),
              ),
            ],
          ),
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 320,
            fadeInDuration: const Duration(milliseconds: 100),
          ),
          if(nameCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( nameCard!),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  mini: true,
                  onPressed: (){},
                  child: const Icon(Icons.favorite, size: 25, color: Colors.black,),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  mini: true,
                  onPressed: (){},
                  child: const Icon(Icons.comment, size: 25, color: Colors.black,),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  mini: true,
                  onPressed: (){},
                  child: const Icon(Icons.share, size: 25, color: Colors.black,),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}