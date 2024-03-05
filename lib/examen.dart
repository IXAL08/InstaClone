import 'package:flutter/material.dart';

class Cinepolis extends StatefulWidget{
  @override
  State<Cinepolis> createState() => _CinepolisState();

}

class _CinepolisState extends State<Cinepolis>{
  
  alerta(){
    showDialog(barrierDismissible: true,context: context, builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("La Perla - 1.68 km"),
              Divider(),
              Text("VIP La Perla - 1.68 km"),
              Divider(),
              Text("Ciudadela Lifestyle Center - 2.51 km"),
              Divider(),
              Text("Arboledas - 3.10 km"),
              Divider(),
              Text("Centro Sur - 4.11 km"),
              Divider(),
              Text("VIP Gran Plaza - 4.70 km"),
              Divider(),
              Text("La Gran Plaza - 4.70 km"),
              Divider(),
              Text("Plaza México - 5.49 km"),
              Divider(),
              Text("Centro Magno - 5.60 km"),

            ],
          )
        ),
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Cartelera"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 17),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down, color: Colors.white,), padding: EdgeInsets.only(right: 238),),
            IconButton(onPressed: () {}, icon: Icon(Icons.score, color: Colors.white,))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Media/images/Panda.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {alerta();}, child: Text("Ciudadela Lifestyle Center - 2.5 km", style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child:
                  RichText(text: TextSpan(text: "Hoy, Martes 05 De Marzo", style: TextStyle(color: Colors.blue),),),
                ),
                Divider(),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("Media/images/Poster.jpg", scale: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("57 Segundos Atrás",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,),),
                            Text("🅱️  🕑 99 min  🎬 Suspenso",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 10),),
                            Text("ESP", style: TextStyle(color: Colors.blueAccent),),
                            OutlinedButton(onPressed: () {}, child: Text("4:30 PM",style: TextStyle(color: Colors.black)),style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.black)),),
                            Text("SUB", style: TextStyle(color: Colors.blueAccent),),
                            OutlinedButton(onPressed: () {}, child: Text("9:10 PM",style: TextStyle(color: Colors.black)),style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.black)),)
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}