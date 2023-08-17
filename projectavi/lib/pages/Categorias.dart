// ignore: file_names
import 'package:flutter/material.dart';

import 'Login.dart';

class CategoriasPage extends StatefulWidget{
  @override
  State<CategoriasPage> createState()=> _CategoriasPageState();
}

class _CategoriasPageState extends State<CategoriasPage>{

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.blue,
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Categorias",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },),
              // Agrega más iconos aquí según tus necesidades
            ],
          ),
          body: _page(),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          // Acción para el icono de búsqueda
                        },
                        ),
                        Text('Compras',style: TextStyle(fontSize: 10),),
                        ],),
                        Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                          // Acción para el icono de búsqueda
                        },
                        ),
                        Text('Perfil',style: TextStyle(fontSize: 10),),
                        ],),
                        ],
              ),
            )),
        ),
    );
  }

    Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 70,
          runSpacing: 50,
          children: [
            _icon1(),
            _icon2(),
            _icon3(),
            _icon4(),
            ],
         ),
       ),
     );
  }

//controla los icono
Widget _icon1(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Column(
          children: [
            Text('Infantiles',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Image.asset(
        'images/sillas_infantiles_3.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
        ),
          ],
        ),
      ),
    );
  }

Widget _icon2(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Column(
          children: [
            Text('De oficiona',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Image.asset(
        'images/sillas_oficina_2.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
        ),
          ],
        ),
      ),
    );
  }

Widget _icon3(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Column(
          children: [
            Text('Institucionales',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Image.asset(
        'images/sillas_colegio_2.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
        ),
          ],
        ),
      ),
    );
  }

  Widget _icon4(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Column(
          children: [
            Text('Para el hogar',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Image.asset(
        'images/sillas_hogar_2.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
        ),
          ],
        ),
      ),
    );
  }
}


        