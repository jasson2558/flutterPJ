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
            actions: <Widget>[
              IconButton(
                    icon: Icon(Icons.list),
                    onPressed: (){
                      // Acción para el icono de inicio
                    },
                  ),
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
            child: Text("pagina Categorias"),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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