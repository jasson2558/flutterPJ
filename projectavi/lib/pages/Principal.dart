import 'package:flutter/material.dart';
import 'Categorias.dart';
import 'Login.dart';

class PrincipalPage extends StatefulWidget {
  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  List<String> imagePaths = [
    'images/sillas_colegio_1.jpg',
    'images/sillas_hogar_1.jpg',
    'images/sillas_infantiles_1.jpg',
    'images/sillas_oficina_1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.blue,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
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
          ),
        ),
      ),
    );
  }

  // Controla la página del login
  Widget _page() {
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
            _recomendaciones(),
          ],
        ),
      ),
    );
  }

  // Controla los textos
  Widget _extraText(BuildContext context) {
    return Container(
      child: Text(
        "Recomendaciones",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  Widget _extraText2(BuildContext context) {
    return Container(
      child: Text(
        "Bienvenido",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  // Controla la cuadrícula de imágenes
  Widget _recomendaciones() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: imagePaths.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0, // Cambia este valor para ajustar el espacio entre columnas
      mainAxisSpacing: 10.0, // Cambia este valor para ajustar el espacio vertical entre filas
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {showAboutDialog(
          context: context,
          children: <Widget>[
            AlertDialog(
              title: Text('lo sentimos de momento este servicio no esta dispoible'),
              actions: <Widget>[
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Aceptar'),
                ),
              ],
            ),
          ],
        );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.asset(
              imagePaths[index],
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
