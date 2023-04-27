import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../libary/view.dart';
import 'logic.dart';

class Playlist_vidsPage extends StatelessWidget {
  final logic = Get.put(Playlist_vidsLogic());
  final state = Get.find<Playlist_vidsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LibaryPage(),
                ));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(color: Colors.black54),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 330,
                  height: 170,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(13)),
                  child: Card(
                      child: Image.asset(
                    'images/mw2.jpeg',
                    fit: BoxFit.fitWidth,
                  )),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Call of Duty Modern Warfare 2.0',
                        style: GoogleFonts.actor(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text('Justice Luther',
                        style: GoogleFonts.actor(
                            color: Colors.white, fontSize: 17)),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        'The recent return of Ghost, Captain Price,Farah and Gaz,to take down the mexican cartel that wishes to collaborate with the russians',
                        style: GoogleFonts.actor(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 23,
                    ),
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.collections_bookmark_sharp,
                        size: 19,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.file_download_outlined,
                        size: 19,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.reply,
                        size: 19,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Icon(
                              Icons.play_arrow_sharp,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Play all',
                            style: GoogleFonts.actor(
                                color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    Container(
                      width: 150,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Icon(
                              Icons.shuffle,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Shuffle',
                            style: GoogleFonts.actor(
                                color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '129 videos',
                    style: Theme.of(context).textTheme.caption,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 17,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: 12,
                      child: Text(
                        'Call of Duty Modern Warfare',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Justice Luther',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '513 views . 3 days ago',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.inter(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Mute This Notification',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                      ];
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: 12,
                      child: Text(
                        'Call of Duty Modern Warfare',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Justice Luther',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '513 views . 3 days ago',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.inter(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Mute This Notification',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                      ];
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: 12,
                      child: Text(
                        'Call of Duty Modern Warfare',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Justice Luther',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '513 views . 3 days ago',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.inter(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Mute This Notification',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                      ];
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: 12,
                      child: Text(
                        'Call of Duty Modern Warfare',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Justice Luther',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '513 views . 3 days ago',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.inter(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Mute This Notification',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                      ];
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: 12,
                      child: Text(
                        'Call of Duty Modern Warfare',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Justice Luther',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '513 views . 3 days ago',
                      style: Theme.of(context).textTheme.caption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.inter(color: Colors.black),
                                ))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Mute This Notification',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                      ];
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
