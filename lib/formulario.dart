import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              autocorrect: false,
              textCapitalization: TextCapitalization.words,
              //textAlign: TextAlign.center,
              obscureText: false,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              cursorColor: Colors.red,
              //cursorWidth: 20,
              //cursorHeight: 20,
              //cursorRadius: Radius.circular(50),
              maxLength: 10,
              decoration: InputDecoration(
                  //icon: Icon(Icons.person_3, color: Colors.white,)
                prefixIcon: Icon(Icons.person_3, color: Colors.white,),
                //prefix: Image.asset("Media/images/Messenger.png", width: 35,),
                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal:10),
                hintText: "Usuario",
                hintStyle: TextStyle(color: Colors.white,),
                helperText: "Nombre de usuario",
                helperStyle: TextStyle(color: Colors.white,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellow,
                    width: 2
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
