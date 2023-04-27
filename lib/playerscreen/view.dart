import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_player/pod_player.dart';

import '../data.dart';
import 'logic.dart';

class PlayerscreenPage extends StatefulWidget {
  final Video video;

  const PlayerscreenPage({super.key, required this.video});

  @override
  State<PlayerscreenPage> createState() => _PlayerscreenPageState(video);
}

class _PlayerscreenPageState extends State<PlayerscreenPage> {
  final logic = Get.put(PlayerscreenLogic());
  final state = Get.find<PlayerscreenLogic>().state;

  final Video video;

  _PlayerscreenPageState(this.video);

  @override
  void initState() {
    logic.controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.video.videoUrl),
    )..initialise();
    super.initState();
  }

  // @override
  // void dispose() {
  //   logic. controller!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (logic.controller!.isVideoPlaying) {
          logic.isPlaying.value = true;
          return true;
        } else {
          logic.isPlaying.value = false;
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black, leading: const SizedBox()),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: PodVideoPlayer(
                        controller: logic.controller!,
                        videoTitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            video.title,
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                            child: Text(
                          video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 17.0),
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                            child: Text(
                          video.viewCount,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 12.0),
                        )),
                        const SizedBox(
                          width: 9,
                        ),
                        Flexible(
                            child: Text(
                          video.duration,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 12.0),
                        )),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          '#rextemonali@#ali....more',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 12.0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.HBumX4-ktIvw0lsETW53SwHaEK?w=330&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          video.author.username,
                          style: GoogleFonts.actor(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          video.Subscribers,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Container(
                          width: 84,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: Colors.black,
                          ),
                          child: Center(
                              child: Text(
                            'Subscribe',
                            style: GoogleFonts.actor(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Container(
                              width: 150,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: const Color(0xffC6C6C6),
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    video.likes,
                                    style:
                                        GoogleFonts.inter(color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  const Text(
                                    '|',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    video.dislike,
                                    style: GoogleFonts.inter(
                                        color: Colors.black54),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                    child: Icon(
                                      Icons.thumb_down_off_alt_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Container(
                            width: 85,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xffC6C6C6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.reply_outlined,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Share',
                                    style:
                                        GoogleFonts.actor(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Container(
                            width: 100,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xffC6C6C6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.file_download_outlined,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Download',
                                    style:
                                        GoogleFonts.actor(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Container(
                            width: 85,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xffC6C6C6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.cut_outlined,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Clip',
                                    style:
                                        GoogleFonts.actor(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Container(
                            width: 80,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xffC6C6C6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.collections_bookmark_outlined,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Save',
                                    style:
                                        GoogleFonts.actor(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 340,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Comments',
                                      style: GoogleFonts.actor(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 2, 0, 0),
                                    child: Text(
                                      video.viewCount,
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.PHpQDSMPawf6bUrY0O7lkQHaHa?w=203&h=203&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                                    radius: 17,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Smiles bro like hell,ive been waiting for so long',
                                    style: GoogleFonts.actor(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down_outlined))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.ig2mnQsw5RlZkTD9TF7DiQHaHa?w=165&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Damien Fabrico',
                                style: GoogleFonts.actor(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 3,
                            ),
                            Text('1k views . 3 days ago',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset('images/ilustrator.jpeg',
                              fit: BoxFit.contain),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Technology in the massive wave of networking connecting users all'
                                  ' around the globe.Individual stikes of software gadgets...More',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.actor(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.Ucc1_t61fO-aOvLtYgdLAQHaEo?w=278&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7')),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Damien Stacks',
                                style: GoogleFonts.actor(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 3,
                            ),
                            Text('1k views . 3 days ago',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset('images/Tech.jpeg',
                              fit: BoxFit.contain),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Technology in the massive wave of networking connecting users all'
                                  ' around the globe.Individual stikes of software gadgets...More',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.actor(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.sHq5an99aybP3-DkecfE7wHaE8?w=263&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7')),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Levi Ackermans',
                                style: GoogleFonts.actor(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 3,
                            ),
                            Text('1k views . 3 days ago',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset('images/ilustrator.jpeg',
                              fit: BoxFit.contain),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Technology in the massive wave of networking connecting users all'
                                  ' around the globe.Individual stikes of software gadgets...More',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.actor(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.qgrkWSxV734mcNJKKEzqPgHaEK?w=313&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Fhara Tacunna',
                                style: GoogleFonts.actor(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 3,
                            ),
                            Text('23k views . 7 days ago',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset('images/Tech.jpeg',
                              fit: BoxFit.contain),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Technology in the massive wave of networking connecting users all'
                                  ' around the globe.Individual stikes of software gadgets...More',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.actor(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.IS3AB8nE96z2cXJuTcb5LAHaE7?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),),
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Text('Bonaventure Chaz',
                                  style: GoogleFonts.actor(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(
                                height: 3,
                              ),
                              Text('2k views . 4 months ago',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset('images/virtualreality.jpeg',
                              fit: BoxFit.contain),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Technology in the massive wave of networking connecting users all'
                                  ' around the globe.Individual stikes of software gadgets...More',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.actor(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
