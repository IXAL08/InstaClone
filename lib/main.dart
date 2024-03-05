import 'package:flutter/material.dart';
import 'package:insta/examen.dart';
import 'home_page.dart';
import 'contador.dart';
import 'formulario.dart';
import 'facebook_login.dart';
import 'examen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white54),
        appBarTheme: const AppBarTheme(elevation: 1,color: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,

      ),
      home: Cinepolis(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              icon: Icon(Icons.home,color: currentPage == 0? Colors.white : Colors.white54,size: 40,),
              onPressed: (){
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.search, color: currentPage == 1? Colors.white : Colors.white54,size: 40,),
              onPressed: (){
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.add, color: currentPage == 2? Colors.white : Colors.white54,size: 40,),
              onPressed: (){
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.card_travel, color: currentPage == 3? Colors.white : Colors.white54,size: 40,),
              onPressed: (){
                setState(() {
                  currentPage = 3;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.person_2, color: currentPage == 4? Colors.white : Colors.white54,size: 40,),
              onPressed: (){
                setState(() {
                  currentPage = 4;
                });
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}*/
