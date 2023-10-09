import 'package:app/screens/aniket.dart';
import 'package:app/screens/anusshree.dart';
import 'package:app/screens/favorites.dart';
import 'package:app/screens/feed.dart';
import 'package:app/screens/guru.dart';
import 'package:app/screens/hitesh.dart';
import 'package:app/screens/message_page.dart';
import 'package:app/screens/search_page.dart';
import 'package:app/screens/swarna.dart';
import 'package:app/screens/zahid.dart';
import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive/mobile_screen_layout.dart';
import 'package:app/utils/responsive/responsive_layout.dart';
import 'package:app/utils/responsive/web_screen_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';

void main() {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: "dpjfdnrga");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boomergram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
        textTheme:
            GoogleFonts.robotoTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.white, // This sets the text color to white.
        ),
      ),
      routes: {
        MessagePage.routeName: (context) => MessagePage(),
        FeedPage.routeName: (context) => FeedPage(),
        SwarnaPage.routeName: (context) => SwarnaPage(),
        GuruPage.routeName: (context) => GuruPage(),
        SearchPage.routeName: (context) => SearchPage(),
        FavoritesPage.routeName: (context) => FavoritesPage(),
        ZahidPage.routeName: (context) => ZahidPage(),
        HiteshPage.routeName: (context) => HiteshPage(),
        AnusshreePage.routeName: (context) => AnusshreePage(),
        AniketPage.routeName: (context) => AniketPage(),
      },
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
