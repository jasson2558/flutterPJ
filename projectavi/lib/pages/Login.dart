// ignore: file_names
import 'package:flutter/material.dart';

import 'Principal.dart';
import 'Registro.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState()=> _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
          body: _page(),
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
            _icon(),
            const SizedBox(height: 50),
            _inputField("Usuario", usernameController),
            const SizedBox(height: 20),
            _inputField("Contraseña", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 50),
            _extraText(context),
            ],
         ),
       ),
     );
  }

//controla el icono
  Widget _icon(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        ),
      child: Image.asset(
        'images/logo_sillas.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
        ),
    );
  }

//controla los inputs 
  Widget _inputField(String hintText,TextEditingController controller,
  {isPassword = false}){

    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
        ),
      obscureText: isPassword,
    );
  }

//controla los botones 
Widget _loginBtn() {
  return ElevatedButton(
    onPressed: () {

      String username = usernameController.text;
      String password = passwordController.text;

      if (username == 'admin' && password == '123'){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PrincipalPage()),
        );
      } else {
        showAboutDialog(
          context: context,
          children: <Widget>[
            AlertDialog(
              title: Text('Usuario o contraseña icorrectos'),
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
      }
    },
    child: SizedBox(
      width: double.infinity,
      child: Text(
        "Ingresar",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ),
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: Colors.white,
      onPrimary: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 10),
      fixedSize: Size(200, 50), // Controla el ancho y alto del botón
    ),
  );
}


//controla el acceso a registro
  Widget _extraText(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
         MaterialPageRoute(builder: (context) => RegistroPage()),
         );
      },
      child: Text(
        "No tienes una cuenta? Registrate aqui",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }
}

