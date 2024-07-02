import 'package:demo_application/pages/first_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("navigate to first page"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
      )),
    );
  }
}
