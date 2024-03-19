import 'package:flutter/material.dart';
import 'package:praktikum_01/second_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SecondPage(data: 'Data penghuni heaven')));
              },
              child: const Text("Going to Heaven"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page', arguments: 'In Heaven with route');
              },
              child: const Text("Penghuni to Heaven via route"),
            ),
          ],
        ),
      ),
    );
  }
}
