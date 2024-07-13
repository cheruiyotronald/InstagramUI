import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/bottomnavigation_bar.dart';
import 'package:instagram_ui/screens/story_screen.dart';

import 'post_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 243, 247),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Column(
            children: [
              instagram(),
              storiesText(),
              SizedBox(
                height: 15,
              ),
              Story(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              Posts(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Row storiesText() {
    return Row(
      children: [
        Text(
          "Stories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.play_arrow, size: 20),
        SizedBox(width: 5),
        Text(
          "watch all",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row instagram() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.photo_camera_outlined,
          size: 30,
          color: Colors.black54,
        ),
        Image.asset(
          "images/instagram1.png",
          width: 150,
        ),
        Image.asset(
          "images/send.png",
          width: 60,
        ),
      ],
    );
  }
}
