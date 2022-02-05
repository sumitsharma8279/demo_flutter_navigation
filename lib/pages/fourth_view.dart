import 'package:flutter/material.dart';

class Fourthview extends StatelessWidget {
  const Fourthview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(child: Text('Settings Page', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),))
                ],
              )
        ),
      ),
    );
  }
}