import 'package:flutter/material.dart';
import 'package:instagram_ui/models/items_model.dart';
import 'package:instagram_ui/screens/bottomnavigation_bar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.user});

  final UserDetail user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      backgroundColor: Color.fromARGB(255, 239, 243, 247),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.userName,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(user.image),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text(
                      user.post.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(width: 40),
                    Text(
                      user.followers.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(width: 40),
                    Text(
                      user.following.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Posts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "followers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                    SizedBox(width: 25),
                    Text(
                      "following",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Send Message",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    SizedBox(
                      height: 35,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_2,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 32,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      user.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 20,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  user.address,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black45),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 45,
                color: Color.fromARGB(255, 227, 238, 245),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.view_module_rounded,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.black38,
                      ),
                      Icon(
                        Icons.stars_rounded,
                        color: Colors.black38,
                      ),
                      Icon(
                        Icons.person_pin_rounded,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.01,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) => Image.asset(user.image),
                itemCount: 9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
