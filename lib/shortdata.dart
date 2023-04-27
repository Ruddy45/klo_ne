import 'package:flutter/material.dart';

class Short {
   bool like;
  bool dislike;
   bool Favourite;
  final String profileImage;
  final String Description;
  final String UserTitil;
  final String musicplayed;
  final int likecounts;
  final int dislikecounts;
  final String commentcount;
  final String videoUrL;
  final IconButton share;
  final IconButton more;
 final IconButton comment;
   Short({
    required this.comment,
  required this.like,
  required this.dislike,
  required this.Favourite,
  required this.profileImage,
  required this.Description,
  required this.UserTitil,
   required this.musicplayed,
  required this.likecounts,
  required this.dislikecounts,
  required this.commentcount,
  required this.videoUrL,
  required this.share,
  required this.more,
  });
}
final List<Short> shortList =[
  Short(
      like: false,
      dislike: false,
      Favourite: false,
      profileImage: 'https://th.bing.com/th/id/OIP.sIcpPx0lfRBdawiTefivOQHaEK?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      Description: 'Viral video#wensday#viral#twistxavair',
      UserTitil: 'ZED INClIDE',
      musicplayed: 'Wensdays Tunes',
      likecounts: 234,
      dislikecounts: 2,
      commentcount: '0',
      share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
      more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
      videoUrL: 'https://youtu.be/qQ85Oe7-i1g',
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'Ghost Returns',
    UserTitil: 'ZED INClIDE',
    musicplayed: 'Wensdays Tunes',
    likecounts: 234,
    dislikecounts: 2,
    commentcount: '0',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/ajN3y8KN6W4',
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'DIY CAUGHT',
    UserTitil: 'Ruddy Spooks',
    musicplayed: 'Wensdays Tunes',
    likecounts: 234,
    dislikecounts: 2,
    commentcount: '0',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/DNF8rnDiswU',
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'Snoop Doog Challenge Accepted',
    UserTitil: 'Sofia Karma',
    musicplayed: 'Wensdays Tunes',
    likecounts: 234,
    dislikecounts: 2,
    commentcount: '0',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/BYXujFp0Klk',
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'Viral video#wensday#viral#twistxavair',
    UserTitil: 'Dax Rick',
    musicplayed: 'Wensdays Tunes',
    likecounts: 456,
    dislikecounts: 10,
    commentcount: '0',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/nWB0czAClUM',
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'Unlocked#Danger#BeastMode',
    UserTitil: 'DJ YEN',
    musicplayed: 'Wensdays Tunes',
    likecounts: 1607,
    dislikecounts: 0,
    commentcount: '34',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/qH3gnaR9hTY',
  ),
  Short(
    comment: IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
    like: false,
    dislike: false,
    Favourite: false,
    profileImage: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    Description: 'Hacking#Python#Script',
    UserTitil: 'BonAventure Dude',
    musicplayed: 'Wensdays Tunes',
    likecounts: 234,
    dislikecounts: 2,
    commentcount: '0',
    share: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
    more: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined)),
    videoUrL: 'https://youtu.be/j47mHCFJ55U',
  ),
];