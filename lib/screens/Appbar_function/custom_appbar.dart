import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klo_ne/screens/nav_screens.dart';

import '../../widget/Notfication_controler.dart';
import 'Mentions.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  AppBarCustom({Key? key}) : super(key: key);
  final controller = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 45, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  'Notifications',
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 21),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cast_sharp,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: PopupMenuButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(),
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
                                child: Text('Watch on TV',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Terms & privacy poilices',
                                    style:
                                    GoogleFonts.inter(color: Colors.black)))),
                        PopupMenuItem(
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Help & Feedback',
                                    style: GoogleFonts.inter(
                                        color: Colors.black))))
                      ];
                    },
                  )),

            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            children: [
              Obx(() {
                return RawChip(
                    label: Text(
                      'All',
                      style: GoogleFonts.inter(
                          color: controller.Isall.value ==true?Colors.white:Colors.black),
                    ),
                    backgroundColor: controller.Isall.value ==true?Colors.black:Colors.grey,
                    onPressed: () {
                      controller.Isall.value = true;
                    });
              }),
              SizedBox(
                width: 10,
              ),
              RawChip(
                tapEnabled: true,
                selectedColor: Colors.cyan,
                label: Text(
                  'Mentions',
                  style: GoogleFonts.inter(color: controller.Isall.value ==false ?Colors.white:Colors.black),
                ),
                backgroundColor:controller.Isall.value ==false ?Colors.black:Colors.grey,
                onPressed: () {
                  controller.Isall.value = false;
                },
              ),
            ],
          ),

        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(130);
}
