import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaApp());
}

class NinjaApp extends StatefulWidget {
  const NinjaApp({Key? key}) : super(key: key);

  @override
  State<NinjaApp> createState() => _NinjaAppState();
}

class _NinjaAppState extends State<NinjaApp> {

  int level = 0; //declared a variable for checking the state

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[700],
          appBar: AppBar(
            title: Text("Flutter ID"),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            //elevation 0.0 means the appbar will not look elevated then the body
            elevation: 0.0,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              setState(() {
                level+=1;
              });
            } ,
            backgroundColor: Colors.grey[800],
            child: Icon(Icons.add),

          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Assets/shahzaneer.png'),
                    radius: 50.0,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Divider(
                  //yeh aik line hai  jo first widget se dusre widet k darmiyaan hoti hai
                  height: 90.0,
                  color: Colors.grey,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Shahzaneer Ahmed',
                  style: TextStyle(
                    color: Colors.amberAccent[700],
                    // letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Development Level',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  '$level',
                  style: TextStyle(
                    color: Colors.amberAccent[700],
                    // letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "shahism01@gmail.com",
                      style: TextStyle(
                        color: Colors.amberAccent[700],
                        fontSize: 18.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
