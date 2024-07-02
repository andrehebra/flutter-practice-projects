import 'package:demo_application/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  List<Widget> createListWidgets(int num) {
    List<Widget> returnList = [];

    for (int i = 0; i < num; i++) {
      returnList.add(ListTile(
        leading: Icon(Icons.delete),
        subtitle: Text("SUBTITLE"),
        title: Text("title"),
        trailing: Text(i.toString()),
        onTap: () {},
      ));
    }

    return returnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: createListWidgets(5000),
          )),
      body: Center(
          child: ElevatedButton(
        child: const Text("navigate to second page"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      )),
    );
  }
}
