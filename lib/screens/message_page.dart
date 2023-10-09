import 'package:app/widgets/message/MessageCard.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  static const routeName = '/message-page';

  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Messages"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                MessageCard(
                  imagePath: 'assets/images/default.jpeg',
                  message: "Happy birthday Papa",
                  displayName: "Amma",
                ),
                SizedBox(
                  height: 10,
                ),
                MessageCard(
                  imagePath: 'assets/images/siva.jpeg',
                  message: "Happy birthday Akka",
                  displayName: "Laddu",
                ),
                SizedBox(
                  height: 10,
                ),
                MessageCard(
                  imagePath: 'assets/images/default.jpeg',
                  message: "Happy birthday Papa",
                  displayName: "Appa",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
