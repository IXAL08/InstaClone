import "package:flutter/material.dart";


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset("Media/images/Instagram_logo.png",height: 40,),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Image.asset("Media/images/like.png", height: 25,),
              onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("Media/images/Messenger.png", height: 25,),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("Media/images/PP.jpg"),
                  ),
                ),
                Text("Hee Hoo", style: TextStyle(color: Colors.white, fontSize: 18),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_vert, size: 30,color: Colors.white,),
                  onPressed: () {},
                )
              ],
            ),
            Image.asset("Media/images/Factos.jpg"),
            Row(children: [
              IconButton(
                icon: Image.asset("Media/images/like.png", height: 35,),
                onPressed:() {},
              ),
              IconButton(
                icon: Image.asset("Media/images/Comentario.png", height: 30,),
                onPressed:() {},
              ),
              IconButton(
                icon: Image.asset("Media/images/Share.png", height: 35,),
                onPressed:() {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.bookmark_border, size: 40,color: Colors.white,),
                onPressed:() {},
              ),
            ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: "Liked by"),
                          TextSpan(text: " Secretaria de Hacienda", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: " and others", style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Hee Hoo", style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: " Como diría un gran filósofo y maestro mío: 'Hmm hmm hmm hmm.  Hmm hmm seems inescapable.  Hmm hmm hmm hmm hmm kings.  Hmm hmm hmm hmm hmm resisted hmm hmm hmm hmm hmm.  Resistance hmm hmm hmm hmm hmm hmm, hmm hmm hmm hmm hmm hmm, hmm hmm hmm hmm.' ")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}