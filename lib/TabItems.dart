
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:theramadanapp/FlutterTextFields.dart';
import 'package:theramadanapp/main.dart';


void main() {
  var items;
  runApp(MaterialApp(
    home:Hello(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Listss();
  }
}

class Listss extends State<MyApp>{

  List<String> _products = ['Laptop'];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: const Text('Listat'),

        ),

        body: Column(children: [

          Container(

              margin: const EdgeInsets.all(20),
              child: RaisedButton(

                  color: Theme.of(context).primaryColor,
                  splashColor: Colors.blueGrey,
                  textColor: Colors.white,
                  onPressed: (){



                    setState(() {
                      _products.add('Macbook');
                    });

                  },
                  child: const Text('Hello')

              )

          ),
          Column(
              children: _products
                  .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                    Text(element,
                        style: const TextStyle(color: Colors.deepPurple))
                  ],
                ),
              ))
                  .toList()),
        ]),



      ),
    );

  }
}

class TabBarexample extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: DefaultTabController(

          length: 3,
          child: Scaffold(

            appBar: AppBar(

              title: const Text('TabViews me Flutter',textAlign: TextAlign.center,),
              bottom: const TabBar(

                tabs: [
                  const Tab(icon: const Icon(Icons.directions_car)),
                  const Tab(icon: const Icon(Icons.directions_bike)),
                  const Tab(icon : const Icon(Icons.star)),

                ],



              ),
              backgroundColor: const Color.fromRGBO(21, 168, 184, 1.0),


            ),
            body: TabBarView(
              children: [

                MainPage(),
                StateWidgetss(),
                LoginDemo()

              ],
            ),
          ),
        )
    );

  }


}

class Bottomtabs extends StatefulWidget {



  State<Bottomtabs> createState() => _BottomTabBarWidget();


}

class _BottomTabBarWidget extends State<Bottomtabs> {

  int _selectedIndex = 0;

  static const List _tabPages = [

    Text('Hello Bote'),
    Text('Nuk shkoj me autobus/tren'),
    Text('Kaniher edhe me bicikell ose ne kembe'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });



  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: const Text('Bottom Tab-at'),

        ),
        body: Center(

            child: _tabPages[_selectedIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(25, 167, 155, 1.0),
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [

            const BottomNavigationBarItem(
                icon: const Icon(Icons.directions_car), label: 'Car'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.directions_transit), label: 'Train'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.directions_bike), label: 'Bike'),
          ],


        ),

      ),
    );

  }

}




class UshtrimeMeLista extends StatelessWidget{



  List<String> countries = ["Rruga Muharem Fejza", "Rruag e ibrit", "kombesia e malit", "rruga e leshit", "Llal","Rruga Dardania", "Rruga ilaz dalipi","Rruga ish blloku","Rruga e Kosoves","rruga meno kapataki"];
  List<String> cities = ["Prishtine","Mitrovice","Peje","Prizren","Gjakove","Ferizaj","Gjilan","Tirana","Durres","Shkoder"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(

          appBar: AppBar(title: const Text('Ushtrime me Lista'),


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
                                style: const TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                              child: Text(
                                  countries[position],
                                  style: const TextStyle(fontSize: 18.0)

                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Text(
                                "Ferizaj",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
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
                    const Divider(
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

        appBar: AppBar(title: const Text('Me Shit Kerre'),

          centerTitle: true,

        ),

        body: Center(

          child:Card(


            elevation: 80,
            color: const Color.fromRGBO(21, 205, 193, 1.0),

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
                      child: const CircleAvatar(

                        backgroundImage:  const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                        radius:100,


                      ),

                    ),

                    const SizedBox(

                      height: 10,


                    ),
                    const Text(
                      'Gjirafa 50',
                      style: TextStyle(fontSize: 30.0
                      ),

                    ),

                    const SizedBox(

                      height: 30,
                    ),
                    const Text('Shitet Gollf 7shi 2018 36mij kilometra i ri lamelen tre ulje ka sa dush kontakt 044567899',
                        style: TextStyle(fontSize: 15.0)

                    ),

                    const SizedBox(

                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: RaisedButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  UshtrimeMeLista()),
                          );
                        },

                        color: Colors.purple,
                        child: Padding(

                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [

                              const Text('Kliko',style: const TextStyle(fontSize: 20.0,color: Colors.white),),






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


class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: '',
      home: HorizontalGridviewsDetyra(),

    );


  }
}
class fg extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text('cc'),
      ),

      body: Center(
        child: Stack(

          children: [



            Container(

              child: const HorizontalGridviewsDetyra(),
            ),



            Container(

              margin: const EdgeInsets.only(left: 20, top:300, right: 20, bottom:10),




              child: SizedBox(

                width: double.infinity,
                height: 200,
                child: GridView(



                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                      childAspectRatio: 2/2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      maxCrossAxisExtent: 200),
                  children: [

                    Container(


                      width: 100.0,
                      decoration: const BoxDecoration(

                          color: Colors.blue,
                          image: const DecorationImage(

                              image: const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                              fit: BoxFit.cover
                          )
                      ),


                    ),

                    Container(

                      width: 100.0,
                      decoration: const BoxDecoration(

                          color: Colors.blue,
                          image: const DecorationImage(

                              image: const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                              fit: BoxFit.cover
                          )
                      ),


                    ),

                    Container(

                      width: 100.0,
                      decoration: const BoxDecoration(

                          color: Colors.blue,
                          image: const DecorationImage(

                              image: const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                              fit: BoxFit.cover
                          )
                      ),


                    ),
                    Container(

                      width: 100.0,
                      decoration: const BoxDecoration(

                          color: Colors.blue,
                          image: const DecorationImage(

                              image: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                              fit: BoxFit.cover
                          )
                      ),


                    ),

                  ],
                ),




              ),
            ),

          ],
        ),

      ),
    );





  }
}
class HorizontalGridviewsDetyra extends StatelessWidget{

  const HorizontalGridviewsDetyra({Key? key }) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text('Horizontal GridvIews'),
        backgroundColor: Colors.red,
      ),
      body: Container(

        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),

        child: SizedBox(







          width: double.infinity,
          height: 200,
          child: GridView(



            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                childAspectRatio: 2/2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                maxCrossAxisExtent: 200),


            children: [



              Container(

                  width: 100.0,
                  decoration: const BoxDecoration(

                      color: Colors.blue,
                      image: const DecorationImage(

                          image: const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                          fit: BoxFit.cover
                      )
                  ),


                  alignment: Alignment.center,
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 30),
                  )
              ),



              Container(

                decoration: const BoxDecoration(

                    color: Colors.blue,
                    image: const DecorationImage(

                        image: const NetworkImage('https://picsum.photos/250?image=9')
                    )
                ),
              ),


              //  https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png


              Container(
                decoration: const BoxDecoration(

                    color: Colors.blue,
                    image: const DecorationImage(

                        image: const NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )
                ),
              ),


              Container(


                decoration: const BoxDecoration(

                    color: Colors.blue,
                    image: const DecorationImage(

                        image: NetworkImage(' https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png'),
                        fit: BoxFit.cover
                    )
                ),
              ),


              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:const DecorationImage(
                        image: const NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),



              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),

              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:const DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),

              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:const DecorationImage(
                        image: const NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),

              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),

              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:const DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),

              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:const DecorationImage(
                        image: const NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),


              //
              Container(


                decoration: const BoxDecoration(

                    color: Colors.red,
                    image:DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                    )

                ),

              ),





            ],














          ),




        ),



      ),





    );



  }
}
class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: const Text(''),
        ),
        body: Container(

          child: Column(

            children: <Widget>[

               RamadanApp(),
               LoginDemo()
            ],
          ),
        ),

      ),

    );

  }
}

class HorizontalGridviewsDetyra2 extends StatelessWidget{

  const HorizontalGridviewsDetyra2({Key? key }) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text('Horizontal GridvIews'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),

        child: SizedBox(

          width: double.infinity,
          height: 150,
          child: GridView(



            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                childAspectRatio: 2/2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                maxCrossAxisExtent: 200),
            children: [

              Container(

                  width: 100.0,
                  decoration: const BoxDecoration(

                      color: Colors.blue,
                      image: DecorationImage(

                          image: NetworkImage("https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png"),
                          fit: BoxFit.cover
                      )
                  ),


                  alignment: Alignment.center,
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 30),
                  )
              ),



              Container(

                decoration: const BoxDecoration(

                    color: Colors.blue,
                    image: const DecorationImage(

                        image: const NetworkImage('https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png')
                    )
                ),
              ),


              //  https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png





            ],
          ),
        ),

      ),
    );


  }
}


class StateWidgetss extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: const Text('Widgets'),

        ),

        body: Center(

          child: SingleChildScrollView(


            child: Column(

              children: <Widget>[

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.blue

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.red

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.green

                  ),
                ),



                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: const Color.fromRGBO(19, 181, 186, 1.0)

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: const Color.fromRGBO(193, 22, 184, 1.0)

                  ),
                ),


                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: const Color.fromRGBO(199, 190, 24, 1.0)

                  ),
                ),
              ],


            ),
          ),
        ),
      ),
    );
  }
}









class StateWidgetss2 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: const Text('Widgets'),

        ),

        body: Center(


          child: SingleChildScrollView(


            child: Column(

              children: <Widget>[

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.blue

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.red

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Colors.green

                  ),
                ),



                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: Color.fromRGBO(19, 181, 186, 1.0)

                  ),
                ),

                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: const Color.fromRGBO(193, 22, 184, 1.0)

                  ),
                ),


                Container(

                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(

                      color: const Color.fromRGBO(199, 190, 24, 1.0)

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UshtrimeMeCarta2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(


        appBar: AppBar(title: const Text('Ushtrime Me karta'),

        ),
        body: SingleChildScrollView(




          child: Card(

            color: const Color.fromRGBO(156, 156, 147, 1.0),

            elevation: 50,
            shadowColor: const Color.fromRGBO(36, 175, 170, 1.0),
            child: SizedBox(

              width: double.infinity,
              height: 350,
              child: Padding(

                padding: const EdgeInsets.all(30),

                child: Column(

                  children: <Widget>[





                    const Image(

                      image: const NetworkImage('https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png'),width: 300,height: 200,),

                    const SizedBox(

                      height:40,

                      child: const Text('Ketu e shihni nje njeri shume i buzqeshur',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                    ),

                    SizedBox(

                      height: 30,
                      child: RaisedButton(


                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UshtrimeMeLista()),
                          );

                        },

                        color: const Color.fromRGBO(38, 201, 222, 1.0),
                        textColor: Colors.white,
                        child: Padding(

                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            children: [

                              const Text('Kliko',style: const TextStyle(fontSize: 20.0,color: Colors.white),


                              ),





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


class CreditCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          SingleChildScrollView(


            child: Card(
              color: const Color.fromRGBO(156, 156, 147, 1.0),

              elevation: 50,
              shadowColor: const Color.fromRGBO(36, 175, 170, 1.0),
              child: SizedBox(

                width: double.infinity,
                height: 350,
                child: Padding(

                  padding: const EdgeInsets.all(30),

                  child: Column(

                    children: <Widget>[





                      const Image(

                        image: const NetworkImage('https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png'),width: 300,height: 200,),

                      const SizedBox(

                        height:40,

                        child: const Text('Ketu e shihni nje njeri shume i buzqeshur',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                      ),

                      SizedBox(

                        height: 30,
                        child: RaisedButton(


                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UshtrimeMeLista()),
                            );

                          },

                          color: const Color.fromRGBO(38, 201, 222, 1.0),
                          textColor: Colors.white,
                          child: Padding(

                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [

                                const Text('Kliko',style: const TextStyle(fontSize: 20.0,color: Colors.white),


                                ),





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


          Container(

            child: Card(
              color: const Color.fromRGBO(144, 22, 187, 1.0),

              elevation: 50,
              shadowColor: const Color.fromRGBO(36, 175, 170, 1.0),
              child: SizedBox(

                width: double.infinity,
                height: 350,
                child: Padding(

                  padding: const EdgeInsets.all(30),

                  child: Column(

                    children: <Widget>[





                      const Image(

                        image: const NetworkImage('https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png'),width: 300,height: 200,),

                      const SizedBox(

                        height:40,

                        child: const Text('Ketu e shihni nje njeri shume i buzqeshur',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                      ),

                      SizedBox(

                        height: 30,
                        child: RaisedButton(


                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UshtrimeMeLista()),
                            );

                          },

                          color: const Color.fromRGBO(38, 201, 222, 1.0),
                          textColor: Colors.white,
                          child: Padding(

                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [

                                const Text('Kliko',style: const TextStyle(fontSize: 20.0,color: Colors.white),


                                ),





                              ],




                            ),



                          ),

                        ),

                      ),
                      Container(

                        color: Colors.red,
                      )

                    ],

                  ),

                ),
              ),
            ),

          ),
        ],


      ),

    );
  }
}


class DesignCard extends StateWidgetss{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('DesignFlutter'),

        ),

        body: SafeArea(



          child: SingleChildScrollView(


            child:Card(




              color: Color.fromRGBO(219, 226, 226, 1.0),

              child: SizedBox(
                width: 250,
                height: 250,


                child: Column(

                  children: <Widget>[

                    Container(

                      child: SizedBox(


                        child: Image.network('https://placeimg.com/640/480/any',height:150),




                      ),














                    ),


                    Row(



                      children: <Widget>[


                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                              Icons.star_border,

                              size: 35.0,

                              color: Colors.orange

                          ),


                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                              Icons.star_border,
                              size: 35.0,

                              color: Colors.orange

                          ),



                        ),


                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                              Icons.star_border,
                              size: 35.0,

                              color: Colors.orange

                          ),

                        ),


                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                              Icons.star_border,
                              size: 35.0,

                              color: Colors.orange

                          ),

                        ),

                      ],
                    ),

                    SizedBox(



                      child: Text('Shitet shtepia ne lagjen qendresa 200m2 me qmim 250,000€',textAlign: TextAlign.center,),
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



class Riddler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Riddler'),),
            body: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: <Widget>[






                    Container(


                      color: Colors.red, // Yellow
                      height: 200.0,
                      width: 200.0,
                    ),


                    Container(

                      color: Colors.green, // Yellow
                      height: 200.0,
                      width: 200.0,


                      child: SizedBox(


                        child: Image.network('https://placeimg.com/640/480/any',height:150),





                      ),




                    ),

                  ],



                ),











              ),
            )
        )
    );
  }
}
class CardItem{

  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({

    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class CardItem2{



  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem2({

    required this.urlImage,
    required this.title,
    required this.subtitle,
  });

}

class MainPage extends StatefulWidget{

  @override
  Cardss2 createState() => Cardss2();
}
class Cardss2 extends State<MainPage>{

  List <CardItem> items = [

    CardItem(urlImage: "https://placeimg.com/640/480/any", title: "hello", subtitle: "world"),
    CardItem(urlImage: "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", title: "hello", subtitle: "world"),
    CardItem(urlImage: "https://placeimg.com/640/480/any", title: "hello", subtitle: "world"),
    CardItem(urlImage: "https://placeimg.com/640/480/any", title: "hello", subtitle: "world"),
  ];

  List<CardItem2> co = [

    CardItem2(urlImage: "https://placeimg.com/640/480/any", title: "SHITET Shtepia ne lagjen qendresa 200m2 ", subtitle: "230,000€"),
    CardItem2(urlImage: "https://placeimg.com/640/480/any", title: "SHITET Shtepia ne lagjen qendresa 200m2 ", subtitle: "230,000€"),
    CardItem2(urlImage: "https://placeimg.com/640/480/any", title: "SHITET Shtepia ne lagjen qendresa 200m2 ", subtitle: "230,000€"),
    CardItem2(urlImage: "https://sanjibsinha.com/wp-content/uploads/2021/07/Can-you-code-in-WordPress-How-do-I-learn-WordPress-coding-.jpg", title: "SHITET Shtepia ne lagjen qendresa 200m2 ", subtitle: "230,000€"),

  ];

  Widget build(BuildContext context) => Scaffold(


    appBar: AppBar(

      title: Text('App1 me Flutter'),
      centerTitle: true,
    ),

    body: SingleChildScrollView(

      child: Container(

        margin: EdgeInsets.all(5),
        width: double.infinity,
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(5),
              child: Text('Hello',textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0),),
            ),
            Container(


              padding: EdgeInsets.all(5),
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,

                itemCount: 4,

                separatorBuilder: (context,_) => SizedBox(width: 12,),
                itemBuilder: (context,index) => buildCard(item: items[index]),


              ),



            ),


            Container(
              margin: EdgeInsets.all(5),

              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,

                itemCount: 4,

                separatorBuilder: (context,_) => SizedBox(width: 12,),
                itemBuilder: (context,index) => buildCard2(indexx: co[index]),


              ),



            ),


            Card(


              elevation: 80,
              color: const Color.fromRGBO(21, 205, 193, 1.0),

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
                        child: const CircleAvatar(

                          backgroundImage:  const NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                          radius:100,


                        ),

                      ),

                      const SizedBox(

                        height: 10,


                      ),
                      const Text(
                        'Gjirafa 50',
                        style: TextStyle(fontSize: 30.0
                        ),

                      ),

                      const SizedBox(

                        height: 30,
                      ),
                      const Text('Shitet Gollf 7shi 2018 36mij kilometra i ri lamelen tre ulje ka sa dush kontakt 044567899',
                          style: TextStyle(fontSize: 15.0)

                      ),

                      const SizedBox(

                        height: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: RaisedButton(

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  UshtrimeMeLista()),
                            );
                          },

                          color: Colors.purple,
                          child: Padding(

                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              children: [

                                const Text('Kliko',style: const TextStyle(fontSize: 20.0,color: Colors.white),),






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
          ],
        ),

      ),
    ),

  );


  Widget buildCard({

    required CardItem item,
  }) => Container(

      width: 200,
      height: 200,


      child: Column(

        children: [

          Expanded(child: AspectRatio(

            aspectRatio: 4/3,
            child:ClipRect(

              //borderRadius:BorderRadius.circular(40),

              child:  Image.network(item.urlImage,fit:BoxFit.cover),

            ),

          ),


          ),
          const SizedBox(
            width: 12,
          ),

          Text('Koha e mire sot'),
          Text('30 grad celsius')
        ],
      )










  );





}
Widget buildCard2({

  required CardItem2 indexx,
}) => Container(

  width: 200,
  height: 250,

  child: Column(

    children: [

      Expanded(child: AspectRatio(

        aspectRatio: 4/3,
        child:ClipRect(

          //borderRadius:BorderRadius.circular(40),

          child:  Image.network(indexx.urlImage,fit:BoxFit.cover,width: double.infinity,),

        ),

      ),



      ),

      const SizedBox(

        child: Icon(
            Icons.star_border,
            size: 15.0,

            color: Colors.orange

        ),

      ),
      Text(indexx.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 11.0,color: Colors.black),),
      Text(indexx.subtitle,textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0)),


    ],

  ),

);

class GeeksForGeeks extends StatelessWidget {

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Flutter GridView Demo',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('img.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}