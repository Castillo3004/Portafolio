import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children: [

          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Irure sit aliqua est in irure sint consectetur elit et tempor adipisicing veniam irure irure. Deserunt ad eu aliqua minim duis quis. Esse occaecat nisi adipisicing pariatur nulla aute dolor occaecat non id. Veniam proident reprehenderit nulla in aute deserunt ut duis.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}