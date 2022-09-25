import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final String imageUrl =
      "https://avatars.githubusercontent.com/u/77126013?s=400&u=1212de2a7f3679e6db3826150293cbf07543be33&v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 11, 139, 243),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      "Shahzaneer Ahmed",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    accountEmail: const Text("shahzaneer.dev@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                        imageUrl,
                      ),
                      radius: 30.0,
                    ))),
            const SizedBox(
              height: 20.0,
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              // list tile also has a ontap() method for performing some action in Apps
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Contact",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
