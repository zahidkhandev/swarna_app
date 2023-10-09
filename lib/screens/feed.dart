import 'package:app/screens/message_page.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/common/InstagramPost.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FeedPage extends StatefulWidget {
  static const routeName = '/home-page';

  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Ionicons.paper_plane_outline),
            onPressed: () => {
              Navigator.pushNamed(context, MessagePage.routeName),
            },
          )
        ],
        elevation: 4,
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: const Text(
          'Boomergram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 38,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InstagramPost(
              location: 'Ooty',
              accountName: 'anu_rajan01',
              imageId: 'swarna/Anu/sw9tbmr9m7rehfshrkri',
              caption: '<3',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/anusshree.jpeg',
            ),
            InstagramPost(
              location: 'Varkala',
              accountName: 'aniket_762',
              imageId: 'swarna/Aniket/zrgspa06gbmyat3plqmv',
              caption: 'Swimming',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/aniket.jpeg',
            ),
            InstagramPost(
              location: 'Amrita Vishwa Vidyapeetham',
              accountName: 'anu_rajan01',
              imageId: 'swarna/General/eeiqkkjuats4enz6wruw',
              caption: 'Chillin with homies',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/anusshree.jpeg',
            ),
            InstagramPost(
              location: 'Amrita Vishwa Vidyapeetham',
              accountName: '_hitesh._02',
              imageId: 'swarna/Hitesh/yhlsbxnubmtuowzvpvvq',
              caption: 'Chill',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/hitesh.jpeg',
            ),
            InstagramPost(
              location: 'Varkala',
              accountName: 'anu_rajan01',
              imageId: 'swarna/Anu/b0wiuyonp3nestxbqvjs',
              caption: 'Swimming',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/anusshree.jpeg',
            ),
            InstagramPost(
              location: 'Varkala',
              accountName: 'aniket_762',
              imageId: 'swarna/Aniket/qcueg6k1ewvqp8esblxq',
              caption: 'Chillin with homies',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/aniket.jpeg',
            ),
            InstagramPost(
              location: 'Amrita Vishwa Vidyapeetham',
              accountName: 'anu_rajan01',
              imageId: 'swarna/General/vb6jcztwl6rarrb9gzhg',
              caption: 'Funs',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/anusshree.jpeg',
            ),
            InstagramPost(
              location: 'Varkala',
              accountName: 'aniket_762',
              imageId: 'swarna/Aniket/xc8bqyur6cdofhaw5onk',
              caption: '<3',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/aniket.jpeg',
            ),
            InstagramPost(
              location: 'Fun mall',
              accountName: '_hitesh._02',
              imageId: 'swarna/Hitesh/swiqa2m26ptqvi0vkyhh',
              caption: 'Fun',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/hitesh.jpeg',
            ),
            InstagramPost(
              location: 'Varkala',
              accountName: 'aniket_762',
              imageId: 'swarna/Aniket/f3rss5t8ny4dbdwvgqyo',
              caption: 'Funs',
              timeAgo: '2 hours ago',
              imageUrl: 'assets/images/aniket.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
