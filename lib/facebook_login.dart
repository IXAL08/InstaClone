import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
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
                  onPressed: (){},
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