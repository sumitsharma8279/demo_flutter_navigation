import 'package:flutter/material.dart';

class DemoPage1 extends StatelessWidget {
  const DemoPage1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
             color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                    child: Text(
                  'demo page 2',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ))
              ],
            ),
          ),
        ),
    );
  }
}