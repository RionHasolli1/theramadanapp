import 'package:flutter/material.dart';

void main() {
  runApp(SilverAppUshtrime());
}

class MyApp extends StatelessWidget{

  final Apptitle = "Rion AlertDialog Kutia";
  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text(Apptitle),
        ),
        body: TextFieldAlertDialogs(),
      ),



    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: RaisedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertdialog(context);
        },
      ),
    );
  }
}

showAlertdialog(BuildContext context){

  Widget okButton = FlatButton(


      child: Text('Hello'),

      onPressed: (){

        Navigator.of(context).pop();
      }

  );

  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class TextFieldAlertDialogs extends StatelessWidget {

  TextEditingController _textFieldController = TextEditingController();


  _displayDialog(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(

        title: Text('Child demo'),
        content: TextField(
          controller: _textFieldController,
          decoration: InputDecoration(hintText: "TextField in Dialog"),

        ),
        actions: <Widget>[

          new FlatButton(
            child: new Text('SUBMIT'),
            onPressed: () {
              Navigator.of(context).pop();
            },

          )
        ],

      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField AlertDialog Demo'),
      ),
      body: Center(
        child: FlatButton(
          child: Text(
            'Show Alert',
            style: TextStyle(fontSize: 20.0),),
          padding: EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          color: Colors.green,
          onPressed: () => _displayDialog(context),
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




