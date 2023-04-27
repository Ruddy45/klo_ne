import 'package:flutter/material.dart';
import 'package:klo_ne/screens/Appbar_function/Notification_Card.dart';
import 'package:klo_ne/screens/Appbar_function/search.dart';
import 'package:klo_ne/widget/Notification_data.dart';

import '../data.dart';

class CustomsliverAppbar extends StatelessWidget {
  const CustomsliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(backgroundColor: Colors.white,
        floating: true,
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset('images/yt_logo.png',scale: 1,),
        ),
        actions: [
          IconButton(onPressed: () {

          },
              icon: const Icon(Icons.cast_sharp, color: Colors.black, size: 19,)),
          IconButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage()) );
              },
              icon: const Icon(
                Icons.notifications_active_outlined, color: Colors.black,
                size: 20,)),
          IconButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Search()));
          }, icon: const Icon(Icons.search, color: Colors.black, size: 20,)),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                foregroundImage: NetworkImage(currentUser.profileImageurl),
              ))
        ]);
  }
}
