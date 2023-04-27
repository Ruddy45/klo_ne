

import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  const Cast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(child: Container(width: 300,height: double.infinity,
        child: Column(
          children: [
            IconButton(onPressed: () {
            }, icon: Icon(Icons.add,size: 56,color: Colors.black,))
          ],
        ),
      )),
    );
  }
}
