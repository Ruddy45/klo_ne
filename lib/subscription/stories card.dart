import 'package:flutter/material.dart';
import 'package:klo_ne/subscription/shortmodel.dart';

class StoriesCardPage extends StatelessWidget {
  const StoriesCardPage({Key? key, required this.lap}) : super(key: key);
  final List<Stories> lap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 6,),
            Text('Stories'),
            Expanded(child: SizedBox())
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
              children: List.generate(
                  lap.length, (index) => StoriesCard(laplist: lap[index]))),
        ),

      ],
    );
  }
}

class StoriesCard extends StatelessWidget {
  const StoriesCard({Key? key, required this.laplist}) : super(key: key);
  final Stories laplist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 180,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network(
                      laplist.thumbnail,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(right: 5,top: 5,
                  child: PopupMenuButton(
                    child: Icon(Icons.more_vert_outlined,color: Colors.white,),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.feedback_outlined,color: Colors.black,),
                                  SizedBox(width: 10,),
                                  Text('Send Feedback',style: TextStyle(color: Colors.black,),)
                                ],
                              )))
                    ],
                  ),
                ),
                Positioned(bottom: 5,right: 24,left: 24,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              laplist.iMageURL,
                            ),
                            fit: BoxFit.fill)),
                  ),
                )
              ],
            ),
          ],
        ),
        Text(laplist.author.username)
      ],
    );
  }
}
