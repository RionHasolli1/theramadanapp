


import 'package:flutter/material.dart';
import 'package:theramadanapp/Alerts.dart';
import 'package:theramadanapp/FlutterTextFields.dart';
import 'package:theramadanapp/TabItems.dart';
import 'package:theramadanapp/main.dart';


void main() {
  runApp(TabBarexample3());
}



class OtherApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

        home: ramadancard());

  }
}

class ramadancard extends StatelessWidget {

  final urlim = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmvslim.com%2F4-steps-when-visiting-a-mosque-for-the-first-time%2F&psig=AOvVaw3itwh63svN4e2HggizGmrQ&ust=1651226874539000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCMC3l8zBtvcCFQAAAAAdAAAAABAK';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text("Hekk9o"),

        ),

        body: Container(

          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 330,

          child: Card(
            elevation: 100,
            color: Color.fromRGBO(132, 99, 84, 1.0),

            shadowColor: Colors.black,


            child: SizedBox(


              child: Column(

                children: [

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundColor: Colors.lightBlue,


                      radius: 70,
                      backgroundImage: NetworkImage(urlim),
                    ),
                  ),

                  SizedBox(
                    width: 300,
                    child: Text(
                      'Urime muaji i shenjte i ramazanit,zoti jau boft kabull.Ne sektorin tjeter keni menyjat e iftarit te pregaditur nga ne',
                      style: TextStyle(color: Colors.white,
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic),),
                  ),

                  Container(

                    margin: EdgeInsets.only(top: 25.0),

                    child: Row(


                      children: [


                        new Padding(

                            child: Icon(

                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 70.0)),


                        new Padding(


                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 20.0)),


                        new Padding(


                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 20.0)),


                        new Padding(


                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 20.0)),


                        new Padding(


                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 20.0)),


                        new Padding(


                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.only(top: 0.0, left: 20.0)),


                      ],


                    ),


                  ),

                ],
              ),
            ),
          ),


        ),
      ),
    );
  }

}

class TabBarexample3 extends StatelessWidget{

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
                  const Tab(icon: const Icon(Icons.star),)

                ],



              ),
              backgroundColor: const Color.fromRGBO(21, 168, 184, 1.0),


            ),
            body: TabBarView(
              children: [

              MainPage(),
              RamadanApp(),
                LoginDemo()
              ],
            ),
          ),
        )
    );

  }


}