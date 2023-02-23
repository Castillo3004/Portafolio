import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // Imagen 
          const Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          const Title(),

          // Button Section

          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: const Text('Velit Lorem cillum enim minim ut sit enim sit pariatur. Occaecat duis eu laboris non exercitation consequat exercitation sint. Nostrud id enim proident quis exercitation. Pariatur qui fugiat tempor irure qui irure qui id ad anim sunt veniam culpa. Aute ex ut nulla proident laborum non qui cillum nostrud reprehenderit labore mollit. Ea amet laboris nulla officia commodo nostrud sit commodo consectetur ipsum officia.',
              textAlign: TextAlign.justify,
            ),
          )

        ],
      ),
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),)
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {

  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const[
        CustomButton(icon: Icons.call, title: 'CALL'),
        CustomButton(icon: Icons.map_rounded, title: 'ROUTE'),
        CustomButton(icon: Icons.share, title: 'SHARE'),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      child: Column(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 7,),
          Text(title, style: const TextStyle(color: Colors.blue),)
        ],
      ),
      onPressed: (){},
    );
  }
}