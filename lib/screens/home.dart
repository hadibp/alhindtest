import 'package:alhind/data/api.dart';
import 'package:alhind/data/responsemodel.dart';
import 'package:alhind/screens/display.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textontrollerone = TextEditingController();
    TextEditingController textontrollertwo = TextEditingController();
    Future<ResponseModel>? response;

    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: textontrollerone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter text',
              ),
            ),
            TextField(
              controller: textontrollertwo,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter text ',
              ),
            ),
            ElevatedButton(
                onPressed: () {

                  setState(() {
                    response = sendata(
                      // textontrollerone.value.text,
                      //   textontrollertwo.value.text
                        );
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DisplayList()));
                },
                child: const Text('submit'))
          ],
        ),
      )),
    );
  }
}
