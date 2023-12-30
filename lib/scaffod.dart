import 'package:flutter/material.dart';

class myScaffold extends StatelessWidget {
  final Widget body;
  final bool hasDrawer;
  final String title;
  final Widget Drawer;

  const myScaffold({required this.body, required this.hasDrawer, required this.title, required this.Drawer});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:hasDrawer?Drawer:null,
      appBar: AppBar(actions: [
        Icon(Icons.search),
        SizedBox(width:10),
      ],elevation: 3,
      centerTitle: true,
      title: Text(title,style: TextStyle(fontSize: 25),),
      ),
      body:Padding(padding: EdgeInsets.all(16),
      child: body,
      )
    );
  }
}
