import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List alphabet = ['A','B','C','D','E'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height*0.6,
        child: ListView.builder(
          itemCount:alphabet.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(5),
                child: Text("Text ${alphabet[index]}",style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.05
                ),));
          },
        ),
      ),
    );
  }
}
