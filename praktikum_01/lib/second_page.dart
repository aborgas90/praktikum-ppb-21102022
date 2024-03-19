import 'package:flutter/material.dart';
import 'package:praktikum_01/home_page.dart';

class SecondPage extends StatelessWidget {
  final String? data;

  const SecondPage({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data2 = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hell Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data??'',
              style: const TextStyle(fontSize: 20.0),
              ),
            Text(
              data2.toString() ?? '', 
              style: const TextStyle(fontSize: 20),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: const Text("Going to Hell"),
            ),
          ],
        ),
      ),
    );
  }
}
