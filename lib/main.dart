import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  RamadanApp createState() => RamadanApp();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: RamadanApp(),
    );
  }
}


class CardItem{

  final String urlImage;
  final String title;


  const CardItem({

    required this.urlImage,
    required this.title,

  });
}


class ListDetails{

  final String name;
  final String price;
  final String images;


  const ListDetails(this.name,this.price,this.images);
}

class RamadanApp extends StatelessWidget{

  List<ListDetails> det = [


    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://picsum.photos/250?image=9'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://picsum.photos/250?image=9'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
    ListDetails('Trofte Peshku + Buke e leng','7.50€', 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50'),
  ];

  List<String> name = [


    'Trofte Peshku + Buke e leng',
    'Biftek me sallate + Hurme',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',
    'File Pule + uje + Buke e lenge',

  ];
  List<String> price = [


    '7.50€',
    '10.50€',
    '5.50€',
    '10.50€',
    '10.50€',
    '6.50€',
    '6.50€',
    '6.50€',
    '6.50€',
    '6.50€',
    '6.50€',

  ];

  List<String> images = [



    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',
    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50',


  ];

  List <CardItem> items = [

    CardItem(urlImage: "'https://picsum.photos/250?image=9',", title: "Ketu servohemi per Iftar ne ramazan"),
    CardItem(urlImage: "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50", title: "Ketu servohemi per Iftar ne ramazan"),

  ];


  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(

      title: Text('Ramazan App'),
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

              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,

                itemCount: items.length,

                separatorBuilder: (context,_) => SizedBox(width: 12,),
                itemBuilder: (context,index) => buildCard(item: items[index]),


              ),



            ),


            Container(

                width:double.infinity,
                height: 450,

                child:  ListView.builder(

                    itemCount: this.name.length,

                    itemBuilder: (context,index) {
                      EachList(this.name[index], this.price[index], this.images[index]);

                      return ListTile(




                        leading: SizedBox(

                          width: 350,
                          height: 300,
                          child: Row(

                            children: [


                              CircleAvatar(


                                backgroundImage: NetworkImage(images[index]),


                              ),




                              Column(
                                children: [


                                  new Padding(

                                      child:   new Text(name[index],style: TextStyle(fontSize: 17.0),),
                                      padding: EdgeInsets.only(top: 0.0,left: 50.0)),


                                  new Padding(


                                      child:    new Text(price[index],style: TextStyle(fontSize: 17.0,color: Colors.green)) ,
                                      padding: EdgeInsets.only(top: 5.0,left: 50.0)),






                                ],



                              ),



                            ],
                          ),


                        ),


                        onTap: (){

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(this.name[index], this.images[index], this.price[index])));
                        },

                      );
                    }

                )


            )],


        ),



      ),
    ),

  );


  Widget buildCard({

    required CardItem item,

  }) => Card(

    child: Container(


      width: 350,
      height: 450,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius:  BorderRadius.circular(20),

          image: new DecorationImage(image: new NetworkImage("https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"), fit: BoxFit.cover,)
      ),
      child: Column(


        children: [



          Text(item.title,style: TextStyle(fontSize: 20,color: Colors.white,),),


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



            ],


          ),








        ],

      ),

    ),








  );

}

class EachList extends StatelessWidget{

  final String name;
  final String price;
  final String images;

  EachList(this.name,this.price,this.images);





  @override
  Widget build(BuildContext context) {

    return new Card(

        shadowColor: Colors.white38,
        child: new Row(



          children: <Widget>[




            CircleAvatar(


              backgroundImage: NetworkImage(images),


            ),




            Column(
              children: [


                new Padding(

                    child:   new Text(name,style: TextStyle(fontSize: 17.0),),
                    padding: EdgeInsets.only(top: 20.0,left: 50.0)),


                new Padding(


                    child:    new Text(price,style: TextStyle(fontSize: 17.0,color: Colors.green)) ,
                    padding: EdgeInsets.only(top: 0.0,left: 0.0)),






              ],
            ),





          ],


        )









    );


  }
}



class EachList3 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(  appBar: AppBar(title: Text('sijiw'),

      ),

        body: Container(


            padding: EdgeInsets.all(35),

            child: ListView.builder(

              itemBuilder: ( context,index) => EachList3(),
              itemCount: 20,
            )),
      ),

    );
  }
}

class DetailScreen extends StatelessWidget{
  final String name;
  final String price;
  final String images;

  DetailScreen(this.name,this.price,this.images);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Details'),
        ),
        body: Container(

          child: Column(

            children: [

              Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                    child: Text(name,style: TextStyle(fontSize: 20.0,color: Colors.black),)
                ),
              ),

              Container(
                margin: EdgeInsets.all(0),
                child: SizedBox(

                  child: Text(images),
                ),

              ),

              Container(

                child: Image.network(price,width: 400,height: 250,),
              ),



              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kthehu!'),
              ),






            ],
          ),
        ),

      ),




    );
  }
}