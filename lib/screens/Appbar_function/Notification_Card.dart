import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klo_ne/screens/Appbar_function/Mentions.dart';
import 'package:klo_ne/widget/Notification_data.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../widget/Notfication_controler.dart';
import '../nav_screens.dart';
import 'custom_appbar.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBarCustom(),
        body: controller.Isall.value == true ? AllPage() : Mentions(),
      );
    });
  }
}

class AllPage extends StatelessWidget {
  AllPage({
    Key? key,

  }) : super(key: key);

  final controller = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.usernoti.length,
      itemBuilder: (BuildContext context, int index) {
        return NoteCard(
          notification: controller.usernoti[index],
        );
      },
    );
  }
}

class NoteCard extends StatelessWidget {
  final All notification;

  const NoteCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: Image.network(notification.ProfileImage,fit: BoxFit.cover),
                height: 40,
                width: 40,
                decoration:
                const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.teal),

              ),
            ),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      notification.Title, maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 15.0),
                    ),
                  ),
                  Text(timeago.format(notification.Timestream).toString()),

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(12, 23, 0, 8),
              child: Container(
                child: Image.network(notification.networkImage,fit: BoxFit.contain),
                height: 150,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
              ),
            ),
        PopupMenuButton(
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

          ],
        ),

      ),
    );
  }
}
