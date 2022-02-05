import 'package:flutter/material.dart';

class SecondPageView extends StatelessWidget {
  const SecondPageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       
        width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(child: Text('Bussiness Page', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),))
              ],
            )
      ),
    );
  }
}