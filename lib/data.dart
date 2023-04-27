

import 'package:pod_player/pod_player.dart';
import 'package:youtube_metadata/youtube_metadata.dart';

class User {
  final String username;
  final String profileImageurl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageurl,
    required this.subscribers,
  });
}

const User currentUser = User(
    username: "Ruddy Zypher",
    profileImageurl:
        'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo',
    subscribers: '100k');

class Video {

  final User author;
  final String Subscribers;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislike;
  final String videoUrl;
  final String profileImage;
  const Video({
    required this.author,
    required this.Subscribers,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislike,
    required this.videoUrl,
    required this.profileImage
  });
}
  final List<Video> videos =[
    Video(videoUrl:"https://www.youtube.com/watch?v=usaOPajlbn4",
      Subscribers: '12k',
      author: currentUser,
        title: 'WARZONE 2 MAP SOLO GAMEPLAY! (NO COMMENTARY)',
        thumbnailUrl: "https://www.bing.com/th?id=OIP.TgXVkuLzEck6ZMYrmAu6RAHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
        duration: '21:32',
        timestamp: DateTime(2022,4,7),
        viewCount: '50k views',
        likes:'2.8k',
        dislike: '43',
      profileImage: '',
    ),
    Video(
      videoUrl: "https://www.youtube.com/watch?v=bF9g9YuEmRc",
      Subscribers: '123k',
      author: currentUser,
      title: 'MARTIS NEW DOUBLE RED HIGH LIFESTEAL ONE SHOT BUILD 100% OP IN HIGH RANK MARTIS BEST BUILD MLBB 2022',
      thumbnailUrl: 'https://th.bing.com/th/id/OIP.C7Mkh5Lvq2wdEEehb4A1ZQHaDt?w=315&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7',
       duration: '21:14',
      timestamp: DateTime(2020,7,15),
      viewCount: '500k views',
      likes:'290k',
      dislike: '4',
      profileImage: '',
    ),
    Video(videoUrl: "https://www.youtube.com/watch?v=A22qxGWGL68",
      Subscribers: '5k',
      author: currentUser,
      title: 'Guerrilla Warfare｜Shadow Co. Betrayal｜Call of Duty Modern Warfare II｜4K HDR',
      thumbnailUrl: 'https://th.bing.com/th/id/R.3fdf205e918bdf9d4eafe118bf8db7b3?rik=IK4LXx4KPSSuGg&pid=ImgRaw&r=0',
      duration: '0:32:43',
      timestamp: DateTime(2022,1,20),
      viewCount: '400k views',
      likes:'1k',
      dislike: '0',
      profileImage: '',
    ),
    Video(videoUrl: "https://www.youtube.com/watch?v=I72a5sD7NHk",
      Subscribers: '40k',
      author: currentUser,
      title: 'Call of Duty Warzone 2 Quad Win TAQ-56 Gameplay PS5 (No Commentary)',
      thumbnailUrl:'https://th.bing.com/th/id/OIP.AW9wfSEnj6nkUrjK3axDFwHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
       duration: '21:12',
      timestamp: DateTime(2022,12,1),
      viewCount: '18k',
      likes:'48k',
      dislike: '17',
      profileImage: '',
    ),
    Video(videoUrl: "https://www.youtube.com/watch?v=byoAMSOhD3w",
      Subscribers: '100k',
      author: currentUser,
      title: 'Warzone Solo Gameplay PS5(No Commentary)',
      thumbnailUrl: 'https://www.bing.com/th?id=OIP.WrZC3i8vM6GwjsCAEo_AngHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
      duration: '26:33',
      timestamp: DateTime(2022,3,10),
      viewCount: '8.2M',
      likes:'700k',
      dislike: '13',
      profileImage: '',
    ),
    Video(videoUrl: "https://www.youtube.com/watch?v=rCdA9Qv_55Y",
      Subscribers: '134k',
      author: currentUser,
      title: 'This Man Accidentally Tames The Most Ferocious Monster In The Universe, Saving The Mankind!!',
      thumbnailUrl: 'https://th.bing.com/th/id/OIP.0XVrPYenDVcto7k1kVKQPQHaFP?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      duration: '19:59',
      timestamp: DateTime(2022,4,7),
      viewCount: '597k',
      likes:'621k',
      dislike: '44',
      profileImage: '',
    ),
    Video(videoUrl:"https://www.youtube.com/watch?v=9Vh2n6nC0t4",
      Subscribers: '120k',
      author: currentUser,
      title: 'Chasing Lazarus: A Hunt for the Infamous Hackers to Prevent Large Bank Robberies',
      thumbnailUrl: 'https://th.bing.com/th/id/OIP.ej7D31qHOyaEBAdlBpaxFwHaFj?w=214&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      duration: '3:34',
      timestamp: DateTime(2016,6,13),
      viewCount: '50k views',
      likes:'12k',
      dislike: '4',
      profileImage: '',
    ),
    Video(videoUrl: "https://youtu.be/bw-wcYKATiY",
      Subscribers: '18k',
      author: currentUser,
      title: "Treated As A Monster Since Birth, But Years Later The Boy Becomes A Savior.",
      thumbnailUrl: 'https://i.ytimg.com/vi/bw-wcYKATiY/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCT0T_nRS7ItfpHy_dJW2SjPxlf-A',
      duration: '11:39',
      timestamp: DateTime(2022,6,17),
      viewCount: '50k',
      likes:'67k',
      dislike: '33',
      profileImage: '',
    ),
    Video(
      videoUrl:"https://www.youtube.com/watch?v=UdNVwN9eILc",
      Subscribers: '60k',
      author: currentUser,
      title: 'WARZONE 2.0 XBOX SERIES X GAMEPLAY! (NO COMMENTARY)',
      thumbnailUrl: "https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      duration: '22:15',
      viewCount: '39k views',
      likes:'2.45k',
      dislike: '3',
      timestamp: DateTime(2022,6,17),
      profileImage: '',
    ),
    Video(
      videoUrl:"https://www.youtube.com/watch?v=7ZEYQ30iBTc",
      Subscribers: '3k',
      author: currentUser,
      title: '(Introducing) WINDOWS 12 CONCEPT',
      thumbnailUrl: "https://i.ytimg.com/an_webp/7ZEYQ30iBTc/mqdefault_6s.webp?du=3000&sqp=CPnS8JwG&rs=AOn4CLDf1TL-Lv34YtNJ4emNVi1H8j8n9w",
      duration: '',
      viewCount: '39k views',
      likes:'2.45k',
      dislike: '3',
      timestamp: DateTime(2022,12,6),
      profileImage: '',
    ),
  ];