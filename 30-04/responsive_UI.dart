import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext x) {
    return MaterialApp(
      title: 'Responsive',
      home: const responsive(),
    );
  }
}

class responsive extends StatelessWidget{
  const responsive({super.key});
  @override
  Widget build(BuildContext x){
    double screenW=MediaQuery.of(x).size.width;
    if(screenW<=600) return mobile();
    if(screenW>600 && screenW<=1200) return tablet();
    else return desktop();
  }
}

class mobile extends StatefulWidget{
  const mobile({super.key});
  @override
  State<mobile> createState() => mobilepage();
}

class mobilepage extends State<mobile>{
  @override
  Widget build(BuildContext x){
    return Scaffold(
      appBar: AppBar(title: Text("Mobile"),),
      body:Center(
        child: Image.asset('/home/aceec/Downloads/mobile.jpg'),
      ),
    );
  }
}

class tablet extends StatefulWidget{
  const tablet({super.key});
  @override
  State<tablet> createState() => tabletpage();
}

class tabletpage extends State<tablet>{
  @override
  Widget build(BuildContext x){
    return Scaffold(
      appBar: AppBar(title: Text("Tablet"),),
      body:Center( 
        child: Image.asset('/home/aceec/Downloads/tablet.jpg'),
      ),
    );
  }
}

class desktop extends StatefulWidget{
  const desktop({super.key});
  @override
  State<desktop> createState() => desktoppage();
}

class desktoppage extends State<desktop>{
  @override
  Widget build(BuildContext x){
    return Scaffold(
      appBar: AppBar(title: Text("Desktop"),),
      body:Center(
        child:  Image.asset('/home/aceec/Downloads/desktop.jpg')
      ),
    );
  }
}
