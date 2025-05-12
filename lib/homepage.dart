import 'dart:async';

import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   int x = 10;
//   @override
//   Widget build(BuildContext context) {
//     print("HomeScreen build");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('provider state Management'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             child: Center(
//                 child: Text(
//               x.toString(),
//               style: TextStyle(fontSize: 50),
//             )),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           x++;
//           print("x value is $x");
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class Statefulwidget extends StatefulWidget {
//   const Statefulwidget({super.key});

//   @override
//   State<Statefulwidget> createState() => _StatefulwidgetState();
// }

// class _StatefulwidgetState extends State<Statefulwidget> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     print("Statefulwidget build");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('stateful widget'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(DateTime.now().toString()),
//           Container(
//             child: Center(
//                 child: Text(
//               count.toString(),
//               style: TextStyle(fontSize: 50),
//             )),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           count++;
//           print("count value is $count");
//           setState(() {
//             // This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below so that the display can reflect the updated values.
//           });
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class provideer extends StatefulWidget {
  const provideer({super.key});

  @override
  State<provideer> createState() => _StatefulwidgetState();
}

class _StatefulwidgetState extends State<provideer> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print("count value is $count");
      setState(() {
        // This call to setState tells the Flutter framework that something has changed in this State, which causes it to rerun the build method below so that the display can reflect the updated values.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Statefulwidget build");
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Text(DateTime.now().toString()),
          Container(
            child: Center(
                child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            )),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     count++;
      //     print("count value is $count");
         
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
