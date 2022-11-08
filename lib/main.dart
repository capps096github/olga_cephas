import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import 'strings.dart';
import 'tile_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OlgaMiCard(),
    );
  }
}

class OlgaMiCard extends StatelessWidget {
  const OlgaMiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: ListView(
        children: [
          // avatar
          const CircleAvatar(
            backgroundImage: AssetImage("images/o x x.png"),
            radius: 100.0,
          ),

          //
          //
          for (final tileItem in olgasTileItems)
            ListTile(
              leading: Icon(tileItem.icon, color: tileItem.color),
              title: Text(tileItem.title),
              onTap: () async {
                const link = WhatsAppUnilink(
                  phoneNumber: '+256754075461',
                  text: "Hey! I'm inquiring about the apartment listing",
                );
                // Convert the WhatsAppUnilink instance to a string.
                // Use either Dart's string interpolation or the toString() method.
                // The "launch" method is part of "url_launcher".
                await launchUrl(Uri.parse(link.toString()));
              },
            ),

          // adding a list of tile widgets inside another list
          ...List.generate(
            olgasTileItems.length,
            (index) {
              // access a tile item at a given index
              // final tileItem = olgasTileItems[index];
              final tileItem = olgasTileItems.elementAt(index);

              //
              return ListTile(
                leading: Icon(
                  tileItem.icon,
                  color: tileItem.color,
                ),
                title: Text(
                  tileItem.title,
                  style: TextStyle(
                    color: tileItem.color,
                  ),
                ),
                subtitle: Text(
                  tileItem.url,
                  style: TextStyle(
                    color: tileItem.color.withOpacity(.5),
                  ),
                ),
                onTap: () async {
                  // launch the url
                  if (!await launchUrl(Uri.parse(tileItem.url))) {
                    throw 'Could not launch ${tileItem.url}';
                  }
                },
              );
            },
          ),

          //
        ],
      ),
    );
  }
}
