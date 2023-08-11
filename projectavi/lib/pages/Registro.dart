// ignore: file_names
import 'package:flutter/material.dart';

import 'Login.dart';

class RegistroPage extends StatefulWidget{
  @override
  State<RegistroPage> createState()=> _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage>{

  TextEditingController usernameController = TextEditingController();
  TextEditingController usermailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController veripasswordController = TextEditingController();

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
            _inputField("Nombre Usuario", usernameController),
            const SizedBox(height: 20),
            _inputField("Correo Electronico", usermailController),
            const SizedBox(height: 20),
            _inputField("Contraseña", passwordController, isPassword: true),
            const SizedBox(height: 20),
            _inputField("Verificar Contraseña", veripasswordController, isPassword: true),
            const SizedBox(height: 50),
            _registroBtn(),
            const SizedBox(height: 50),
            _extraText(context),
            ],
         ),
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
Widget _registroBtn() {
  return ElevatedButton(
    onPressed: () {
      debugPrint("Nombre Usuario : " + usernameController.text);
      debugPrint("Correo : " + usermailController.text);
      debugPrint("Contraseña : " + passwordController.text);
    },
    child: SizedBox(
      width: double.infinity,
      child: Text(
        "Registrarse",
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


//controla el acceso a login
  Widget _extraText(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
         MaterialPageRoute(builder: (context) => LoginPage()),
         );
      },
      child: Text(
        "Ya tienes una cuenta ? Ingresa aqui",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16,color: Colors.white),
      ),
    );
  }
}