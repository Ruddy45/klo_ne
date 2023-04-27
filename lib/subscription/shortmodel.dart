import '../data.dart';

/// Video = 0, Shorts = 1,
/// Stories = 2,Pictures = 3
/// Vootes = 4,
class Subscription {
  final User? author;
  final List<Video>? videoList;
  final Votes? thisvotes;
  final List<ShortsMini>? shortsList;
  final List<Stories>? storiesList;
  final Picture? picture;
  final int Indicator;

  Subscription({
    this.author,
    this.videoList,
    this.thisvotes,
    this.shortsList,
    this.storiesList,
    this.picture,
    required this.Indicator,
  });
}

class Votes {
  final String Questions;
  final List<Map<String, dynamic>> survey;
  final DateTime period;
  final User author;
  final int likes;
  final List<Comment> comments;

  Votes({
    required this.Questions,
    required this.survey,
    required this.period,
    required this.author,
    required this.likes,
    required this.comments,
  });
}

class Comment {
  final User author;
  final String CommentText;
  final String Time;

  Comment({
    required this.author,
    required this.CommentText,
    required this.Time,
  });
}

class Picture {
  final User author;
  final String picture;
  final List<Comment> comments;
  final int likes;
  final DateTime period;

  Picture({
    required this.author,
    required this.picture,
    required this.comments,
    required this.likes,
    required this.period,
  });
}

class Stories {
  final String vIdeoUrL;
  final String iMageURL;
  final String thumbnail;
  final User author;

  Stories({
    required this.vIdeoUrL,
    required this.iMageURL,
    required this.thumbnail,
    required this.author,
  });
}

class ShortsMini {
  final String vIdeoUrL;
  final String iMageURL;
  final String thumbnail;
  final User author;
  final String videoName;
  final String Views;

  ShortsMini({
    required this.Views,
    required this.videoName,
    required this.vIdeoUrL,
    required this.iMageURL,
    required this.thumbnail,
    required this.author,
  });
}

List<Subscription> sublist = [
  Subscription(
    Indicator: 0,
    videoList: [
      Video(
        videoUrl: "https://www.youtube.com/watch?v=bF9g9YuEmRc",
        Subscribers: '123k',
        author: currentUser,
        title:
            'MARTIS NEW DOUBLE RED HIGH LIFESTEAL ONE SHOT BUILD 100% OP IN HIGH RANK MARTIS BEST BUILD MLBB 2022',
        thumbnailUrl:
            'https://th.bing.com/th/id/OIP.C7Mkh5Lvq2wdEEehb4A1ZQHaDt?w=315&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        duration: '21:14',
        timestamp: DateTime(2020, 7, 15),
        viewCount: '500k',
        likes: '290k',
        dislike: '4',
        profileImage: '',
      )
    ],
  ),
  Subscription(Indicator: 1, shortsList: [
    ShortsMini(
        Views: '3k',
        videoName: 'Make A Thumbnail',
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Shara Darko', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '13k')),
    ShortsMini(
        Views: '4k',
        videoName: 'Ghost Recon Solo Gameplay',
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: '', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '56k')),
    ShortsMini(
        Views: '1k',
        videoName: 'Ghost Recon Solo Gameplay',
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Jason Mark', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    ShortsMini(
        Views: '23k',
        videoName: 'MLBB',
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Dax Rebecca', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '13k')),
    ShortsMini(
        Views: '234k',
        videoName: 'CoD Replay',
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'John Mathew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '15k')),
  ]),
  Subscription(
    Indicator: 0,
    videoList: [
      Video(
        videoUrl: "https://www.youtube.com/watch?v=I72a5sD7NHk",
        Subscribers: '40k',
        author: currentUser,
        title:
            'Call of Duty Warzone 2 Quad Win TAQ-56 Gameplay PS5 (No Commentary)',
        thumbnailUrl:
            'https://th.bing.com/th/id/OIP.AW9wfSEnj6nkUrjK3axDFwHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        duration: '21:12',
        timestamp: DateTime(2022, 12, 1),
        viewCount: '18k',
        likes: '48k',
        dislike: '17', profileImage: '',
      ),
      Video(
        videoUrl: "https://www.youtube.com/watch?v=byoAMSOhD3w",
        Subscribers: '100k',
        author: currentUser,
        title: 'Warzone Solo Gameplay PS5(No Commentary)',
        thumbnailUrl:
            'https://www.bing.com/th?id=OIP.WrZC3i8vM6GwjsCAEo_AngHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
        duration: '26:33',
        timestamp: DateTime(2022, 3, 10),
        viewCount: '8.2M',
        likes: '700k',
        dislike: '13', profileImage: '',
      ),
      Video(
        videoUrl: "https://www.youtube.com/watch?v=rCdA9Qv_55Y",
        Subscribers: '134k',
        author: currentUser,
        title:
            'This Man Accidentally Tames The Most Ferocious Monster In The Universe, Saving The Mankind!!',
        thumbnailUrl:
            'https://th.bing.com/th/id/OIP.0XVrPYenDVcto7k1kVKQPQHaFP?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        duration: '19:59',
        timestamp: DateTime(2022, 4, 7),
        viewCount: '597k',
        likes: '621k',
        dislike: '44', profileImage: '',
      ),
      Video(
        videoUrl: "https://www.youtube.com/watch?v=9Vh2n6nC0t4",
        Subscribers: '120k',
        author: currentUser,
        title:
            'Chasing Lazarus: A Hunt for the Infamous Hackers to Prevent Large Bank Robberies',
        thumbnailUrl:
            'https://th.bing.com/th/id/OIP.ej7D31qHOyaEBAdlBpaxFwHaFj?w=214&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        duration: '3:34',
        timestamp: DateTime(2016, 6, 13),
        viewCount: '50k',
        likes: '12k',
        dislike: '4', profileImage: '',
      ),
    ],
  ),
  Subscription(Indicator: 2, storiesList: [
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
    Stories(
        vIdeoUrL: 'https://www.youtube.com/watch?v=UdNVwN9eILc',
        iMageURL: 'https://th.bing.com/th/id/OIP.9DXMJyij3kbzdDPkCMXqWAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        thumbnail: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
        author: User(username: 'Lizzy Matthew', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '1k')),
  ]),
  Subscription(
      Indicator: 3,
      picture: Picture(
          author: User(username: 'Mark Lee', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '10k'),
          picture: 'https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
          comments: [
            Comment(
                author:
                    User(username: 'Rina Lex', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '45k'),
                CommentText: 'Mobile Legends Bang Bang Martis',
                Time: '4 Days ago')
          ],
          likes: 356,
          period: DateTime(2020, 3, 7))),
  Subscription(Indicator: 0, videoList: [
    Video(
      videoUrl: "https://www.youtube.com/watch?v=9Vh2n6nC0t4",
      Subscribers: '120k',
      author: currentUser,
      title:
          'Chasing Lazarus: A Hunt for the Infamous Hackers to Prevent Large Bank Robberies',
      thumbnailUrl:
          'https://th.bing.com/th/id/OIP.ej7D31qHOyaEBAdlBpaxFwHaFj?w=214&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      duration: '3:34',
      timestamp: DateTime(2016, 6, 13),
      viewCount: '50k',
      likes: '12k',
      dislike: '4', profileImage: '',
    ),
    Video(
      videoUrl: "https://youtu.be/bw-wcYKATiY",
      Subscribers: '18k',
      author: currentUser,
      title:
          "Treated As A Monster Since Birth, But Years Later The Boy Becomes A Savior.",
      thumbnailUrl:
          'https://i.ytimg.com/vi/bw-wcYKATiY/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCT0T_nRS7ItfpHy_dJW2SjPxlf-A',
      duration: '11:39',
      timestamp: DateTime(2022, 6, 17),
      viewCount: '50k',
      likes: '67k',
      dislike: '33', profileImage: '',
    ),
    Video(
      videoUrl: "https://www.youtube.com/watch?v=UdNVwN9eILc",
      Subscribers: '60k',
      author: currentUser,
      title: 'WARZONE 2.0 XBOX SERIES X GAMEPLAY! (NO COMMENTARY)',
      thumbnailUrl:
          "https://th.bing.com/th/id/OIP.mx2vl7NUpNgz6V2syyRcFwHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      duration: '22:15',
      viewCount: '39k',
      likes: '2.45k',
      dislike: '3',
      timestamp: DateTime(2022, 6, 17), profileImage: '',
    ),
  ]),
  Subscription(
      Indicator: 4,
      thisvotes: Votes(
          Questions: '',
          survey: [
            {"Correct": "24%"},
            {'Wrong': '57%'},
            {'Neither': '19%'}
          ],
          period: DateTime(2016, 1, 15),
          author: User(username: 'Ruddy Jax', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '3k'),
          likes: 3456,
          comments: [
            Comment(
                author:
                    User(username: 'Justice Crypto', profileImageurl: 'https://lh3.googleusercontent.com/ogw/AOh-ky3g16lIGJ0v9jZeLWYNbUTTJpfZZGoIlzrpwN3j=s32-c-mo', subscribers: '16k'),
                CommentText: 'Call of Duty Replay',
                Time: '1 day ago')
          ]))
];
