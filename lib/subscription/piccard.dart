import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klo_ne/subscription/shortmodel.dart';

class PictureCard extends StatelessWidget {
  const PictureCard({Key? key, required this.picture}) : super(key: key);
  final Picture picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Flexible(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                    child: Text(
                      'zSecurity',
                      style: GoogleFonts.actor(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text('5 minutes ago',
                        style: Theme.of(context).textTheme.caption),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Check out this post to learn how to perform Brute-Forcing attacks with Kerbrute!..',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 5),
          Image.network(
              'https://th.bing.com/th/id/OIP.UOKNwZBxOPH4hPjt_OW_KwHaE8?w=287&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
               Padding(
                 padding: const EdgeInsets.fromLTRB(13, 3, 3, 3),
                 child: Icon(Icons.thumb_up_sharp,),
               ),
                SizedBox(width: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.thumb_down_off_alt_sharp,),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
