
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',backgroundImage: 'https://static.wikia.nocookie.net/marveldatabase/images/1/1c/Stan_Lee_Legacy.jpg/revision/latest?cb=20211104031322',),
          SizedBox(
            height: 30,
          ),
          CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg', backgroundImage: 'https://static.wikia.nocookie.net/marveldatabase/images/1/1c/Stan_Lee_Legacy.jpg/revision/latest?cb=20211104031322',),
          SizedBox(
            height: 30,
          ),
          CustomCardType2(nameCard: 'Un hermoso Paisaje', imageUrl: 'https://cdna.artstation.com/p/assets/images/images/001/206/348/4k/david-edwards-kenden-001.jpg?1442195813', backgroundImage: 'https://static.wikia.nocookie.net/marveldatabase/images/1/1c/Stan_Lee_Legacy.jpg/revision/latest?cb=20211104031322',),
          SizedBox(
            height: 100,
          ),
          
        ],
      )
    );
  }
}
