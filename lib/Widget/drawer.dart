import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final image_url = "https://scontent.fslv1-1.fna.fbcdn.net/v/t1.6435-9/74876766_2611202742303111_3401555287444815872_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=w90IBYludGwAX9gVL5T&_nc_ht=scontent.fslv1-1.fna&oh=15a0b9f3449e65ad92cf3ea4ea919b51&oe=619F8B22";

    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(

              accountName: Text("Akabhinav Vaishnav",style: TextStyle(
                color: Colors.white
              ),),
              accountEmail: Text("akabhinavv3@gmail.com", style: TextStyle(color: Colors.white),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(image_url),
                  ),
            )),

            ListTile(
              leading: Icon(
                CupertinoIcons.home
              ),
              title: Text("Home"),
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.add
              ),
              title: Text("Add"),
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.list_bullet
              ),
              title: Text("Menu"),
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.person_alt
              ),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
