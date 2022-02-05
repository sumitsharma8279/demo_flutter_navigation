import 'package:flutter/material.dart';

class DemoPage2 extends StatelessWidget {
  const DemoPage2({ Key? key }) : super(key: key);

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
                  'demo page 3',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ))
              ],
            ),
          ),
        ),
    );
  }
}