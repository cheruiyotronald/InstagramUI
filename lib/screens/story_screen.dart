import 'package:flutter/material.dart';
import 'package:instagram_ui/models/items_model.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 38,
              backgroundImage: AssetImage("images/g.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 54.0, top: 55),
              child: CircleAvatar(
                radius: 11,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 8,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text(
                "Your Story",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: 5),
        Expanded(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: userItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                UserDetail user = userItems[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 76,
                        width: 76,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.amber,
                              Colors.pink,
                            ],
                          ),
                        ),
                        child: Container(
                          height: 74,
                          width: 74,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(user.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
