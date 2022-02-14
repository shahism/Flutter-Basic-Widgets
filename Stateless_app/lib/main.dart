import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //stateless widget support krta hai hot reload ko!
  //isko bananay k liay stless likh kr enter karen tou pura template return hojayega
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("Shahzaneer Ahmed"),
          ),
        ),
        body: Container(
          height: 100.0,
          // width: 100.0,
          // margin: EdgeInsets.all(20.0),
          margin: EdgeInsets.fromLTRB(1, 2, 40, 0),
          //margin EdgeInsets. expect krta hai
          //margin means the spacing from outside and padding means the spacing from inside!
          padding: EdgeInsets.fromLTRB(30, 50, 50, 30),
          //spacing from inside!
          color: Colors.teal[100],
        //  container hamesha maximum jageh leta hai! aur ager child dia hua ho tou child jitni jageh leta hai!
          child: Center(
            child: Text("Pakistan noor hai aur noor ko zawaal nhi!"),
          //  container main child aik hi houta hai aik se zyada child nhi hoskta!
          ),
        ),
      )
    );













  }
    //mainly hamain yeh function milta hai namely build aur o yeh return krta hai wohi hamara stateless widgit hoga
    //yani jo hot reload ko support karega aur jisse koi state change na hogi!
  //   return MaterialApp(
  //     home: Scaffold(
  //       backgroundColor: Colors.pink,
  //       body: Center(
  //         child: Text("This is Shahzaneer Ahmed"),
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: (){},
  //         backgroundColor: Colors.amberAccent,
  //         child: Icon(Icons.ac_unit_rounded),
  //       ),
  //     ),
  //   );
  // }
}
