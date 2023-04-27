import 'package:flutter/material.dart';
import 'package:klo_ne/subscription/shortmodel.dart';

class VotesCard extends StatelessWidget {
  const VotesCard({Key? key, required this.label}) : super(key: key);
  final Votes label;
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, height: 200,);
  }
}
