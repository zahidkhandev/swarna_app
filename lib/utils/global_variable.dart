import 'package:app/screens/add_page.dart';
import 'package:app/screens/favorites.dart';
import 'package:app/screens/feed.dart';
import 'package:app/screens/search_page.dart';
import 'package:app/screens/swarna.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedPage(),
  const SearchPage(),
  const AddPage(),
  const FavoritesPage(),
  SwarnaPage(),
];
