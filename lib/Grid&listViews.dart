
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: DynamicGridvIEWS(),
  ));
}


class lists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text("Flutter Listat"),


        ),


        body: ListView(

          children: <Widget>[


            ListTile(


              leading: Icon(Icons.map,color: Colors.blue,),
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UshtrimeMeLista() )

                );
              },

              title: Text('Lokacioni',style: TextStyle(color: Colors.green),




              ),

            ),


            ListTile(

              leading: Icon(Icons.phone,color: Colors.blue,),
              title: Text('Telefoni',style: TextStyle(color: Colors.green)),
            ),

            ListTile(

              leading: Icon(Icons.snapchat,color: Colors.blue,),
              title: Text('Teksti',style: TextStyle(color: Colors.green)),
            ),

            ListTile(


              leading: Icon(Icons.location_city,color: Colors.blue,),
              title: Text('Qyteti',style: TextStyle(color: Colors.green)),
            ),

            ListTile(

              leading: Icon(Icons.star,color: Colors.blue,),
              title: Text('Ylli',style: TextStyle(color: Colors.green)),
            ),

            ListTile(

              leading: Icon(Icons.airplane_ticket,color: Colors.blue,),
              title: Text('Bilete Aeroplani',style: TextStyle(color: Colors.green)),
            ),
            ListTile(

              leading: Icon(Icons.account_box,color: Colors.blue,),
              title: Text('Kutia',style: TextStyle(color: Colors.green)),
            ),

            ListTile(

              leading: Icon(Icons.title,color: Colors.blue,),
              title: Text('Titulli',style: TextStyle(color: Colors.green)),
            ),

            ListTile(




              leading: Icon(Icons.abc,color: Colors.blue,),
              title: Text('Alfabeti',style: TextStyle(color: Colors.green),),
            ),


          ],


        ),
      ),



    );

  }
}

//Lista
class UshtrimeMeLista extends StatelessWidget{



  List<String> countries = ["Rruga Muharem Fejza", "Rruag e ibrit", "kombesia e malit", "rruga e leshit", "Llal","Rruga Dardania", "Rruga ilaz dalipi","Rruga ish blloku","Rruga e Kosoves","rruga meno kapataki"];
  List<String> cities = ["Prishtine","Mitrovice","Peje","Prizren","Gjakove","Ferizaj","Gjilan","Tirana","Durres","Shkoder"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(

          appBar: AppBar(title: Text('Ushtrime me Lista'),


          ),

          body: Center(


            child: ListView.builder(
              itemBuilder: (context, position) {
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[


                            Padding(

                              padding:
                              const EdgeInsets.fromLTRB(12.0, 12.0, 22.0, 6.0),
                              child: Text(
                                cities[position],
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                              child: Text(
                                  countries[position],
                                  style: TextStyle(fontSize: 18.0)

                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Ferizaj",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.star_border,
                                  size: 35.0,

                                  color: Colors.grey,

                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2.0,
                      color: Colors.grey,
                    )
                  ],
                );
              },
              itemCount: countries.length,

            ),
          ),
        )

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
                            MaterialPageRoute(builder: (context) =>  Info1()),
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


class Info1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text("Info2"),

        ),

        body: Center(



          child: Stack(


            alignment: Alignment.center,



            children: <Widget>[
              // background image and bottom contents
              Column(

                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.orange,
                    child: Center(

                      child: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50',width: 300,height: 200,),

                    ),





                  ),



                  Column(






                    children: <Widget>[



                      Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites'


                          '',style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.italic),),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:

                        RaisedButton(

                            child: const Text('Gjirafa50'),
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DynamicGridvIEWS()))),

                      ),

                      Padding(padding: EdgeInsets.all(10.0),
                        child: Image.network('https://picsum.photos/250?image=9',width: 250,height: 150,),

                      )

                    ],






                  ),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      child: const Text('Go back!'),
                    ),
                  ),
                ],

              ),



            ],




          ),

        ),

      ),
    );

  }
}


class GridPajmet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Prsh  Gridviews'),

        ),
        body: GridView.count(

          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          children: List.generate(10, (index) {
            return Padding(

              padding: const EdgeInsets.all(10.0),
              child: Container(


                decoration: BoxDecoration(

                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))

                ),

              ),
            );
          },
          ),
        ),

      ),


    );
  }
}

class DynamicGridvIEWS extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text('Gridat'),

        ),
        body: GridView.count(



            primary: false,
            shrinkWrap: false,
            padding: const EdgeInsets.all(20.0),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,


            children: <Widget>[




              RaisedButton(onPressed: (){
                Navigator.pop(context);
              }),




              Container(


                padding: const EdgeInsets.all(20),

                child: const Text('Grid ',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))



                ),

              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 2',style: TextStyle(fontSize: 20.0,color: Colors.white,),textAlign: TextAlign.center,),
                decoration: BoxDecoration(

                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 3',style: TextStyle(fontSize: 20.0,color: Colors.white,),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=1')
                    ),
                    color: Color.fromRGBO(7, 156, 148, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 4',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),

                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=2')
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 6',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=3')
                    ),
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 7',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 8',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(7, 156, 148, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 9',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 10',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 11',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=5')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 12',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=6')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 13',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=8')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 14',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=9')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 15',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=10')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 16',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=11')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),
              Container(

                padding: const EdgeInsets.all(20),

                child: const Text('Grid 17',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=12')
                    ),
                    color: Color.fromRGBO(227, 73, 12, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),

              Container(

                padding: const EdgeInsets.all(20),
                child: const Text('Grid 18',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=13')
                    ),
                    color: Color.fromRGBO(48, 215, 11, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),


              Container(

                padding: const EdgeInsets.all(20),
                child: const Text('Grid 19',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=14')
                    ),
                    color: Color.fromRGBO(48, 215, 11, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),

              Container(

                padding: const EdgeInsets.all(20),
                child: const Text('Grid 20',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=14')
                    ),
                    color: Color.fromRGBO(48, 215, 11, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),

              Container(

                padding: const EdgeInsets.all(20),
                child: const Text('Grid 21',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=14')
                    ),
                    color: Color.fromRGBO(48, 215, 11, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),

              Container(

                padding: const EdgeInsets.all(20),
                child: const Text('Grid 22',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
                decoration: BoxDecoration(

                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=15')
                    ),
                    color: Color.fromRGBO(48, 215, 11, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
              ),
            ],

            crossAxisCount: 3),
      ),
    );

  }
}



class passitem2 extends StatelessWidget{

  final list = List.generate(20, (index) => 'Item  $index');

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('PassiTemss'),

        ),

        body: Center(

          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context,index){

              return ListTile(

                title: Text(list[index]),

                onTap: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context) => RouteTwo(item: list[index]) ));
                },
              );
            },

          ),

        ),
      ),


    );

  }
}

class RouteTwo extends StatelessWidget{

  final String item;
  RouteTwo({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('PassiTemss'),
        ),

        body: Center(



          child: Text(


            'You clicked on: $item',
            style: TextStyle(fontSize: 32),





          ),








        ),


      ),



    );



  }



}

class SilverAppUshtrime extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: CustomScrollView(

        slivers: <Widget>[

          SliverAppBar(

            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(

              title: Text('Goa', textScaleFactor: 1),
              background: Image.network(
                'https://picsum.photos/250?image=15',
                fit: BoxFit.fill,
              ),


            ),

          ),

          Container(

            padding: const EdgeInsets.all(20),
            child: const Text('Grid 21',style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center),
            decoration: BoxDecoration(

                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/250?image=14')
                ),
                color: Color.fromRGBO(48, 215, 11, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10))

            ),

          )
        ],
      ),

    );

  }
}
