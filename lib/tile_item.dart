import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TileItem {
  // icon
  final IconData icon;

  // title
   final String title;

  // tile url
  final String url;

  // color
  final Color color;

  // constructor
  // TileItem(this.icon, this.title, this.url, this.color);
  TileItem({
    required this.icon,
    required this.title,
    required this.url,
    required this.color,
  });
}

// a list of Olga's tile items
// and these include whatsap, tel, instagram, facebook, twitter, youtube, linkedin, github, email, website, etc

// use any of these syntax to create a list of tile items
// final List<TileItem> olgasTileItems = [];
// final olgasTileItems = [];
// final olgasTileItems = <TileItem>[];
final olgasTileItems = [
  // phone
  TileItem(
    icon: Icons.phone,
    title: 'Phone',
    url: 'tel:+234 803 000 0000',
    color: Colors.green,
  ),
  // whatsapp
  TileItem(
    icon: Ionicons.logo_whatsapp,
    title: 'Whatsapp',
    url: 'https://wa.me/qr/EJZJIQ5LWNX6F1',
    color: Colors.teal,
  ),
  // instagram
  TileItem(
    icon: Ionicons.logo_instagram,
    title: 'Instagram',
    url: 'https://instagram.com/xephas_official',
    color: Colors.pink,
  ),
  // facebook
  TileItem(
    icon: Ionicons.logo_facebook,
    title: 'Facebook',
    url: 'https://facebook.com/olga',
    color: Colors.blue,
  ),
  // twitter
  TileItem(
    icon: Ionicons.logo_twitter,
    title: 'Twitter',
    url: 'https://twitter.com/olga',
    color: Colors.blue,
  ),
  // youtube
  TileItem(
    icon: Ionicons.logo_youtube,
    title: 'Youtube',
    url: 'https://youtube.com/olga',
    color: Colors.red,
  ),
  // linkedin
  TileItem(
    icon: Ionicons.logo_linkedin,
    title: 'Linkedin',
    url: 'https://linkedin.com/olga',
    color: Colors.blue,
  ),
];
