import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klo_ne/playerscreen/logic.dart';
import 'package:miniplayer/miniplayer.dart';

import '../libary/view.dart';
import '../shorts/view.dart';
import '../subscription/view.dart';
import 'homescreen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final logic = Get.put(PlayerscreenLogic());
  static const double _playerMinHeight = 60.0;

  int selected_index = 0;
  final _screens = [
    const Homescreen(),
    const ShortsPage(),
    const Scaffold(),
    SubscriptionPage(),
    LibaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: _screens
              .asMap()
              .map((context, screen) => MapEntry(
                    context,
                    Offstage(
                      offstage: selected_index != context,
                      child: screen,
                    ),
                  ))
              .values
              .toList()
            ..add(Offstage(
              child: Miniplayer(
                minHeight: _playerMinHeight,
                maxHeight: MediaQuery.of(context).size.height,
                builder: ( height, percentage) {
                  return Container(
                    child: Center(child: Text('$height, $percentage, this is the height and the percentage ')),
                  );
                },
              ),
            ))),
      bottomNavigationBar: Obx(() {
        return SizedBox(
          height: logic.isPlaying.value == true ? 150 : 70,
          child: Column(
            children: [
              Expanded(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedFontSize: 10.0,
                  unselectedFontSize: 10.0,
                  selectedItemColor: Colors.black,
                  currentIndex: selected_index,
                  onTap: (value) {
                    if (value == 2) {
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (context) {
                          return Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  leading: Text(
                                    'Create',
                                    style: GoogleFonts.actor(fontSize: 19),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.cancel_outlined)),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        child: Icon(Icons.bolt_sharp,
                                            color: Colors.black),
                                        backgroundColor: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Create a Short',
                                      style: GoogleFonts.actor(
                                          color: Colors.black, fontSize: 16),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        child: Icon(Icons.file_upload_outlined,
                                            color: Colors.black),
                                        backgroundColor: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Upload a video',
                                      style: GoogleFonts.actor(
                                          color: Colors.black, fontSize: 16),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        child: Icon(Icons.contactless_outlined,
                                            color: Colors.black),
                                        backgroundColor: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Go live',
                                      style: GoogleFonts.actor(
                                          color: Colors.black, fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    } else {
                      setState(() => selected_index = value);
                    }
                    ;
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        label: 'Home',
                        activeIcon: Icon(
                          Icons.home,
                          color: Colors.black,
                        )),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore_outlined),
                        label: 'Explore',
                        activeIcon: Icon(
                          Icons.explore,
                          color: Colors.black,
                        )),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 45,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.subscriptions_outlined),
                        label: 'Subscriptions',
                        activeIcon: Icon(
                          Icons.subscriptions,
                          color: Colors.black,
                        )),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.video_library_outlined),
                        label: 'Libary',
                        activeIcon: Icon(
                          Icons.video_library,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
