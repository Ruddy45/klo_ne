import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TodayPage extends StatelessWidget {
  final logic = Get.put(TodayLogic());
  final state = Get.find<TodayLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,);
  }
}
