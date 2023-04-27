import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../nav_screens.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,6),
          child: IconButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Navigation(),));
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),  ),
        ),
        backgroundColor: Colors.white,
        actions: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0,1,9,8),
          child: CircleAvatar(backgroundColor: Colors.grey,
              child: Icon(Icons.mic,color: Colors.black,)),
        )
      ],
        elevation: 0,
        title:  Padding(
          padding: EdgeInsets.fromLTRB(0,0,0,0),
          child: CupertinoSearchTextField(borderRadius:BorderRadius.circular(14),),
          ),
        ),
    );
  }
}
