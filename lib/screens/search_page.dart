import 'package:app/screens/aniket.dart';
import 'package:app/screens/anusshree.dart';
import 'package:app/screens/guru.dart';
import 'package:app/screens/hitesh.dart';
import 'package:app/screens/zahid.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/search/profile_search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search-page';

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                border: InputBorder.none, // Remove border
                hintText: 'Search for a user...',
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          ProfileSearchCard(
            imagePath: 'assets/images/anusshree.jpeg',
            username: 'anu_rajan01',
            displayName: 'Anusshree',
            followedByText: '0 followers (no one likes her)',
            onTap: () => {
              Navigator.pushNamed(context, AnusshreePage.routeName),
            },
          ),
          SizedBox(
            height: 25,
          ),
          ProfileSearchCard(
            imagePath: 'assets/images/aniket.jpeg',
            username: 'aniket_762',
            displayName: 'ANIKET PATEL',
            followedByText: 'Followed by zahid._khan_',
            onTap: () => {
              Navigator.pushNamed(context, AniketPage.routeName),
            },
          ),
          SizedBox(
            height: 25,
          ),
          ProfileSearchCard(
            imagePath: 'assets/images/zahid.jpeg',
            username: 'zahid._khan_',
            displayName: 'Zahid Khan',
            followedByText: '😎😎😎',
            onTap: () => {
              Navigator.pushNamed(context, ZahidPage.routeName),
            },
          ),
          SizedBox(
            height: 25,
          ),
          ProfileSearchCard(
            imagePath: 'assets/images/hitesh.jpeg',
            username: '_hitesh._02',
            displayName: 'Hitesh',
            followedByText: 'Followed by aniket_762',
            onTap: () => {
              Navigator.pushNamed(context, HiteshPage.routeName),
            },
          ),
          SizedBox(
            height: 25,
          ),
          ProfileSearchCard(
            imagePath: 'assets/images/guru.jpeg',
            username: 'guru_preethan_31',
            displayName: 'Guru Preethan S',
            followedByText: 'Followed by aniket_762',
            onTap: () => {
              Navigator.pushNamed(context, GuruPage.routeName),
            },
          ),
        ],
      ),
    );
  }
}
