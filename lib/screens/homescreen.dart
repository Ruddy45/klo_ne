import 'package:flutter/material.dart';
import 'package:klo_ne/data.dart';
import '../widget/Videos.dart';
import '../widget/custom_sliver_a.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(scrollDirection: Axis.vertical,
        slivers: [
          CustomsliverAppbar(
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: videos.length,
                  (context, index){
                final video = videos [index];
                return VideoCard(video: video,);
    }

    )
              )
        ],
      ),
    );
  }
}
