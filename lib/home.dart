import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();

  var url;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextField(
              controller: _textEditingController,
            ),
            ElevatedButton(
                onPressed: () {
                  return;
                },
                child: Text('Download'))
          ],
        ),
      ),
    );
  }
}
