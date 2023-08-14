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
          body: _page(),
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

  //controla la pagina del loguin
  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _extraText2(context),
            const SizedBox(height: 50),
            _extraText(context),
            const SizedBox(height: 30),
            _recomendaciones()
            ],
         ),
       ),
     );
  }

//controla los textos
  Widget _extraText(BuildContext context){
    return GestureDetector(
      onTap: (){},
      child: Text(
        "Recomendaciones",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }

  Widget _extraText2(BuildContext context){
    return GestureDetector(
      onTap: (){},
      child: Text(
        "Bienvenido",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }

  //controla el icono
  Widget _recomendaciones(){
    return GestureDetector(
      onTap: (){},
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        ),
      child: Image.asset(
        'images/sillas_colegio_1.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
        ),
    );
  }
}