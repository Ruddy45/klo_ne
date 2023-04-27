import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';


import '../shortdata.dart';
import 'logic.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({
    super.key,
  });

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  final logic = Get.put(ShortsLogic());
  final state = Get.find<ShortsLogic>().state;
  PageController controller = PageController();
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
        itemCount: shortList.length,
        itemBuilder: (BuildContext context, int index) =>
            Pages(shorts: shortList[index]),
      ),
    );
  }
}

class Pages extends StatefulWidget {
  final text;
  final Short shorts;

  Pages({this.text, required this.shorts});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  late final PodPlayerController controller;
  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube('${widget.shorts.videoUrL}'),
    )..initialise();
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PodVideoPlayer(controller: controller,videoAspectRatio: 1.42/3,frameAspectRatio: 1.54/3,podProgressBarConfig:PodProgressBarConfig()),
        Positioned(
          bottom: 3,
          right: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                child: IconButton(
                    onPressed: () => setState(() => widget.shorts.like=! widget.shorts.like),
                    icon: widget.shorts.like == true
                        ? Icon(
                            Icons.thumb_up_alt,
                            color: Colors.blue,
                          )
                        : Icon(
                            Icons.thumb_up_alt,
                            color: Colors.white,
                          )),
              ),
              Text(widget.shorts.likecounts.toString(),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                child: IconButton(
                    onPressed: () => setState(() => widget.shorts.dislike=!widget.shorts.dislike),
                    icon: widget.shorts.dislike == true
                        ? Icon(
                            Icons.thumb_down_alt,
                            color: Colors.blue,
                          )
                        : Icon(
                            Icons.thumb_down_alt,
                            color: Colors.white,
                          )),
              ),
              Text(widget.shorts.dislikecounts.toString(),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                child: IconButton(
                  icon: widget.shorts.comment,color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Text(widget.shorts.likecounts.toString(),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                child: IconButton(
                  icon: widget.shorts.share,color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Text('Share'),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                child: IconButton(
                  icon: widget.shorts.more,color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(height: 30,width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(widget.shorts.musicplayed))),

              )
            ],
          ),
        ),
        Positioned(bottom: 5,left: 2,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2,0,0,45),
              child: Text(widget.shorts.Description.toString(),style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0,0,12,0),
                     child: CircleAvatar(backgroundImage: NetworkImage(widget.shorts.profileImage),radius:23),
                   ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,45,0),
                  child: Text(widget.shorts.UserTitil.toString(),style: TextStyle(color: Colors.white,fontSize: 19),),
                ),
              ],),
            )
          ],),
        )
      ],
    );
  }
}
