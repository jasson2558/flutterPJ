// ignore: file_names
import 'package:flutter/material.dart';

import 'Categorias.dart';
import 'Login.dart';

class PrincipalPage extends StatefulWidget{
  @override
  State<PrincipalPage> createState()=> _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage>{

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
          body: Center(
            child: Text("pagina principal"),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.list),
                    onPressed: (){
                      Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoriasPage()),
                );
                    },
                  ),
                  IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Acción para el icono de búsqueda
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Acción para el icono de configuración
                  },
                ),
                ],
              ),
            )),
        ),
    );
  }
}