import "dart:ui";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int numero = 0;
  Color texto = Colors.black;
  double fuente = 200;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //repeat: repite imagen x,y
        image: DecorationImage(image: AssetImage("Media/images/background.jpg"), fit: BoxFit.fitHeight)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contador"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50,bottom: 40),
          child: Column(
            children: [
              /*SizedBox(
                height: 70,
              )*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {cambiar(1);}, child: Text("-",style: TextStyle(fontSize: 40)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                      backgroundColor: Colors.black,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    )),
                  ElevatedButton(onPressed: () {cambiar(2);}, child: Text("+",style: TextStyle(fontSize: 40)),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                          backgroundColor: Colors.black,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(numero.toString(), style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fuente,
                  color: texto
                ),)
              )
            ],
          ),
        )
      ),
    );
  }

  void cambiar(int opcion) {

    if(opcion == 1){
      setState(() {
        numero--;
      });
    }
    else{
      setState(() {
        numero++;
      });
    }

    if(numero <= -10){
      setState(() {
          texto = Colors.red;
          fuente = 150;
      });
    }
    else if(numero >= 10){
      setState(() {
        texto = Colors.blue;
        fuente = 250;
      });
    }
    else{
      setState(() {
        texto = Colors.black;
        fuente = 200;
      });
    }
  }
}
