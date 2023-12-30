import 'package:flutter/material.dart';
import 'package:lab82/scaffod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List L = [
    'IT4',
    'IT3',
    'IT2',
  ];
  TextEditingController mycontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return myScaffold(
        body: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: TextField(
              controller: mycontroller,
              onTap: () {
                setState(() {
                  L.add(mycontroller.text);
                });
              },
              decoration: InputDecoration(
                label: Text("name"),
                hintText: 'inset your name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 4,
                    color: const Color.fromARGB(255, 95, 244, 54),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return Center(
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              mycontroller.text = L[i];
                            });
                          },
                          leading: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                L.removeAt(i);
                              });
                            },
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.update),
                            onPressed: () {
                              setState(() {
                                L[i] = mycontroller.text;
                                mycontroller.clear();
                              });
                            },
                          ),
                          title: Text(L[i]),
                          tileColor: Colors.amber,
                        )));
              },
              itemCount: L.length,
            ),
          ),
        ]),
        hasDrawer: true,
        title: "myHomePage",
        Drawer: Drawer(
          child: Text("h"),
        ));
  }
}
