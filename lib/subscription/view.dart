import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klo_ne/data.dart';
import 'package:klo_ne/subscription/Shorts%20card.dart';
import 'package:klo_ne/subscription/piccard.dart';
import 'package:klo_ne/subscription/shortmodel.dart';
import 'package:klo_ne/subscription/stories%20card.dart';
import 'package:klo_ne/subscription/subAppBar.dart';
import 'package:klo_ne/subscription/votescard.dart';
import 'package:klo_ne/widgetsz/videoList.dart';

import 'logic.dart';

class SubscriptionPage extends StatelessWidget {
  final logic = Get.put(SubscriptionLogic());
  final state = Get.find<SubscriptionLogic>().state;
  late final Video lex;
  late final ShortsMini take;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          /// Video = 0, Shorts = 1,
          /// Stories = 2,Pictures = 3
          /// Vootes = 4,
          SubBarz(isAll: true, isCW: false, isLive: false, isPost: false, isSettings: false, isToday: false, isUW: false,),
          SliverFillRemaining(
              child: ListView.separated(
            itemCount: sublist.length,
            itemBuilder: (context, index) {
              if (sublist[index].Indicator == 0) {
                return SubVideoLIstPage(
                  videoList: sublist[index].videoList!,
                );
              }
              if (sublist[index].Indicator == 1) {
                return ShortsCardPage(take: sublist[index].shortsList!);
              }
              if (sublist[index].Indicator == 2) {
                return StoriesCardPage(
                  lap: sublist[index].storiesList!,
                );
              }
              if (sublist[index].Indicator == 3) {
                return PictureCard(picture: sublist[index].picture!);
              }
              if (sublist[index].Indicator == 4) {
                return  VotesCard(label: sublist[index].thisvotes!);
              } else {
                return SizedBox();
              }
            },
            separatorBuilder: (BuildContext context, int index) =>
                Divider(height: 40),
          )),
        ],
      ),
    );
  }
}
