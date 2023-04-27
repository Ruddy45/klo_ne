import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data.dart';
import '../playlist_vids/view.dart';
import '../screens/Appbar_function/Notification_Card.dart';
import '../screens/Appbar_function/search.dart';
import 'logic.dart';

class LibaryPage extends StatelessWidget {
  final logic = Get.put(LibaryLogic());
  final state = Get.find<LibaryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast_sharp,
                  color: Colors.black,
                  size: 19,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()));
                },
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                  size: 20,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Search()));
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  foregroundImage: NetworkImage(currentUser.profileImageurl),
                ))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.history,
                        size: 28,
                      )),
                  const SizedBox(
                    width: 1,
                  ),
                  const Text(
                    'History',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Video| Call of Duty',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '19 Watched',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Row(children: [
                                    PopupMenuButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      itemBuilder: (context) {
                                        return [
                                          PopupMenuItem(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Manage your Watched History',
                                                style: GoogleFonts.inter(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ];
                                      },
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Video| Call of Duty',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '19 Watched',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Row(children: [
                                    PopupMenuButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      itemBuilder: (context) {
                                        return [
                                          PopupMenuItem(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Manage your Watched History',
                                                style: GoogleFonts.inter(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ];
                                      },
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Video| Call of Duty',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '19 Watched',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Row(children: [
                                    PopupMenuButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      itemBuilder: (context) {
                                        return [
                                          PopupMenuItem(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Manage your Watched History',
                                                style: GoogleFonts.inter(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ];
                                      },
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.slideshow_sharp,
                        )),
                    Text(
                      'Your videos',
                      style: GoogleFonts.actor(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.file_download_outlined,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Download',
                          style: GoogleFonts.actor(
                              fontSize: 18, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '0 Videos',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.local_movies_outlined,
                        )),
                    Text(
                      'Your movies',
                      style: GoogleFonts.actor(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Playlists',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                    child: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'New playlist',
                        style: GoogleFonts.actor(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              InkWell(onTap: () {},
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(19, 0, 0, 3),
                      child: Icon(Icons.watch_later_outlined),
                    ),
                    const SizedBox(
                      width: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Watch later',
                          style: GoogleFonts.actor(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '0 unwatched videos',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              InkWell(onTap: () {},
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(19, 0, 0, 3),
                      child: Icon(Icons.thumb_up),
                    ),
                    const SizedBox(
                      width: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Liked videos',
                          style: GoogleFonts.actor(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '0 videos',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              InkWell(onTap: () { Navigator.push(context, MaterialPageRoute(builder:(context) => Playlist_vidsPage(),));},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.teal),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Call of Duty| Modern Warfare 2.0',
                          style: GoogleFonts.actor(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Justice Luther . 129 videos',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 23,)
            ],
          ),
        ));
  }
}
