import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klo_ne/playerscreen/logic.dart';
import 'package:klo_ne/playerscreen/view.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../data.dart';

class SubVideoLIstPage extends StatelessWidget {
  SubVideoLIstPage({Key? key, required this.videoList}) : super(key: key);
  final List<Video> videoList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List.generate(videoList.length,
            (index) => SubVideoCard(video: videoList[index])));
  }
}

class SubVideoCard extends StatelessWidget {
  SubVideoCard({Key? key, required this.video}) : super(key: key);
  final Video video;
  final logic = Get.put(PlayerscreenLogic());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (logic.isPlaying.isTrue) {
          logic.isPlaying.value = false;
          logic.controller!.dispose();
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: BoxConstraints(minHeight: 100),
              builder: (BuildContext context) {
                return PlayerscreenPage(
                  video: video,
                );
              });
        } else {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: BoxConstraints(minHeight: 100),
              builder: (BuildContext context) {
                return PlayerscreenPage(
                  video: video,
                );
              });
        }
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                video.thumbnailUrl,
                height: 220.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8.0,
                right: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 16,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        video.duration,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => print('Navigate to profile'),
                    child: CircleAvatar(
                        foregroundImage:
                            NetworkImage(video.author.profileImageurl))),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 15.0),
                      )),
                      Flexible(
                        child: Text(
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 14.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            '${video.author.username}. ${video.viewCount} views . ${timeago.format(video.timestamp)}'),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.more_vert_outlined,
                      size: 20.0,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
