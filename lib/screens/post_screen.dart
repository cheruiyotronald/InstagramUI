import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/user_profile.dart';

import '../models/items_model.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: userItems.length,
        itemBuilder: (context, index) {
          UserDetail user = userItems[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfile(user: user),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(user.image),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfile(user: user),
                        ),
                      );
                    },
                    child: Text(
                      user.userName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        user.image,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    "images/comments.png",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    "images/send.png",
                    height: 30,
                    width: 25,
                  ),
                  Spacer(),
                  Icon(Icons.bookmark_border_sharp)
                ],
              ),
              Text(
                "${user.likes.toString()} Likes",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    user.comment,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "#favourite",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
