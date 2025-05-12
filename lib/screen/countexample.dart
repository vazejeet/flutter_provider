import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/count_provider.dart';

import 'package:provider/provider.dart';

class countExample extends StatefulWidget {
  const countExample({super.key});

  @override
  State<countExample> createState() => _countExampleState();
}

class _countExampleState extends State<countExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('provider state Management'),
      ),
      body: Center(child:Consumer<CountProvider>(builder: (context,value,child){
        print("Consumer build");
        
    
   return Text(countProvider.count.toString(),style: TextStyle(fontSize: 50),);
      }),),
      
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
