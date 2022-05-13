import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LoginDemo()));

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}


class _LoginDemoState extends State<LoginDemo>{

  late String title2;
  late String title3;
  String text = "Nuk ka shenime ketu";
  String text2 = "Sheno tjetr titull";


  void _setonText(){

    setState(() {
      text = title2;
    });

  }

  void _setonText2(){

    setState(() {
      text2 = title3;
    });

  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text('Kycuni ne Llogari'),
          backgroundColor: Color.fromRGBO(13, 164, 173, 1.0),
          centerTitle: true,),


        body: SingleChildScrollView(


          child: Column(

            children: <Widget>[

              Padding(

                padding: const EdgeInsets.all(20),
                child: Center(

                  child: Container(

                      width: double.infinity,

                      height: 150,


                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',width: double.infinity,)),
                ),
              ),

              Padding(

                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
                //  padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  onChanged: (value) => title2 = value,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Shkruja Tekstin ketu:',
                 ),
                ),
              ),



              Container(
                margin: EdgeInsets.all(20),
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: _setonText,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: Text(text,style: TextStyle(fontSize: 20.0),),
                ),






            ],
          ),
        ),
      ),
    );
  }
}


class FlutterCards extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Me Shit Kerre'),

          centerTitle: true,

        ),

        body: Center(

          child:Card(


            elevation: 80,
            color: Color.fromRGBO(21, 205, 193, 1.0),

            shadowColor: Colors.black,

            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(

                padding: const EdgeInsets.all(20.0),

                child: Column(

                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      radius: 108,
                      child: CircleAvatar(

                        backgroundImage:  NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                        radius:100,


                      ),

                    ),

                    SizedBox(

                      height: 10,


                    ),
                    Text(
                      'Gjirafa 50',
                      style: TextStyle(fontSize: 30.0
                      ),

                    ),

                    SizedBox(

                      height: 30,
                    ),
                    Text('Shitet Gollf 7shi 2018 36mij kilometra i ri lamelen tre ulje ka sa dush kontakt 044567899',
                        style: TextStyle(fontSize: 15.0)

                    ),

                    SizedBox(

                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: RaisedButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginDemo()),
                          );
                        },

                        color: Colors.purple,
                        child: Padding(

                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [

                              Text('Kliko',style: TextStyle(fontSize: 20.0,color: Colors.white),),






                            ],








                          ),

                        ),
                      ),
                    ),
                  ],

                ),
              ),

            ),


          ),



        ),

      ),

    );

  }
}



