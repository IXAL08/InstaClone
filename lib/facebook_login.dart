import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{

  final c_usuario = TextEditingController();
  final c_password = TextEditingController();

  String usuario = "";
  String pass = "";

  validar(usuario,pass){
    if(usuario == null || pass == null){
      alerta("Debe llenar todos los campos");
    }
    else if(usuario == "host" && pass == "123"){
      alerta("Bienvenido");
    }
    else{
      alerta("Usuario o contraseña incorrecta");
    }
  }

  alerta(mensaje){
    showDialog(barrierDismissible: false,context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Facebook login"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(mensaje)
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Aceptar"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFF060659),
            Color(0xFF02052A)
          ]
        )
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new, size: 30, color: Colors.white,),alignment: Alignment.bottomLeft,),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, bottom: 70),
              child: Image.asset("Media/images/Facebook_logo.png", height: 75,alignment: Alignment.topCenter,),
            ),
            Center(
              child: SizedBox(
                width: 390,
                child: TextField(
                  controller: c_usuario,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Mobile number o email address",
                    hintStyle: TextStyle(color: Colors.grey[700]),
                    filled: true,
                    fillColor: Color.fromRGBO(3,49,0,0.45),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(158,158,158,0.4), width: 2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Center(
                child: SizedBox(
                  width: 390,
                  child: TextField(
                    controller: c_password,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      filled: true,
                      fillColor: Color.fromRGBO(3,49,0,0.45),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(158,158,158,0.4), width: 2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: ElevatedButton(
                  onPressed: (){
                    usuario = c_usuario.text;
                    pass = c_password.text;

                    validar(usuario,pass);
                  },
                  child: Text("Log In",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                  ),
              ),
            ),
            Center(
              child: RichText(text: TextSpan(text: "Forgotten Password?")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 30,right: 30),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Create new account", style: TextStyle(color: Colors.blueAccent),),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blueAccent
                    )
                  ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20),
            child: Image.asset("Media/images/Meta_logo.png",height: 14),)

          ]
        )
      ),
    );
  }
}