import 'package:flutter/material.dart';

import '../data.dart';
import '../screens/Appbar_function/Notification_Card.dart';
import '../screens/Appbar_function/search.dart';
import '../today/view.dart';
import '../widgetsz/videoList.dart';

class SubBarz extends StatelessWidget {
   SubBarz({
     required this.isAll,
   required this.isCW,
   required this.isLive,
   required this.isPost,
   required this.isSettings,
   required this.isToday,
   required this.isUW,
    Key? key,
  }) : super(key: key);
bool isAll;
bool isToday;
bool isCW;
bool isUW;
bool isLive;
bool isPost;
bool isSettings;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('images/yt_logo.png'),
      ),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 20,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
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
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Column(
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 31,
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                            backgroundColor: Colors.cyan,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text('ZeD'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 31,
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text('ZeD'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        ),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView( scrollDirection: Axis.horizontal,
                child: Row(children:  [
                  RawChip(label:
                  TextButton(onPressed: (){
                    if(isAll= true){}
                  }, child: Text('All') )),
                  SizedBox(width: 3,),
                  TextButton(onPressed: () {
                    if(isToday ==true){
                    }
                  },
                  child: RawChip(label: Text('Today'))),
                  SizedBox(width: 3,),
                  RawChip(label: Text('Continue Watching')),
                  SizedBox(width: 3,),
                  RawChip(label: Text('Unwatched')),
                  SizedBox(width: 3,),
                  RawChip(label: Text('Live')),
                  SizedBox(width: 3,),
                  RawChip(label: Text('Post')),
                  SizedBox(width: 3,),
                  RawChip(label: Text('Settings')),
                ],),
              )
            ],
          )),
    );
  }
}
