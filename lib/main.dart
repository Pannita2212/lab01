import 'package:flutter/material.dart';
import './ui/first_screen.dart';
import './ui/second_screen.dart';
import './ui/my_custom_form.dart';
import './ui/todo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.brown,
        brightness: Brightness.dark,
      ),
      // home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => TodoScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child : Scaffold(
//         appBar: AppBar(
//           title: Text("Tabbar"),
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(icon: Icon(Icons.camera),
//               text: "camera",),
//               Tab(icon: Icon(Icons.add_alarm),
//               text: "Alarm",),
//               Tab(icon: Icon(Icons.account_box),
//               text: "Box",),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Icon(Icons.camera),Icon(Icons.add_alarm),Icon(Icons.account_box)
//           ],
//         ),
//         ),
//     );
//   }

// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Test!!!!"),
//       ),
//       body: Column( 
//         mainAxisAlignment:MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[Text("1"), Text("2"), Text("3")],
//       ),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//           print("counter values $counter");
//         },
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Test!!!!"),
//       ),
//       body: Text("${counter}"),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: (){
//           counter++;
//           print("counter values $counter");
//         },
//       ),
//     );
//   }
// }
