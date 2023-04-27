import 'package:flutter/material.dart';
import 'package:klo_ne/subscription/shortmodel.dart';

class ShortsCardPage extends StatelessWidget {
  const ShortsCardPage({Key? key, required this.take}) : super(key: key);
  final List<ShortsMini> take;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.bolt_sharp,
              color: Colors.red,
            ),
            const Text(
              'Shorts',
              style: TextStyle(fontSize: 15),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: const Text(
                  'View More',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
              children: List.generate(
                  take.length, (index) => ShortsCard(takeList: take[index]))),
        ),
      ],
    );
  }
}

class ShortsCard extends StatelessWidget {
  const ShortsCard({Key? key, required this.takeList}) : super(key: key);
  final ShortsMini takeList;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 8, 15),
              child: Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(takeList.iMageURL), fit: BoxFit.fitHeight,)),
              ),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: PopupMenuButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.hide_source_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Hide',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.feedback_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Send Feedback',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )))
                ],
                child: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    takeList.videoName,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    takeList.Views,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
