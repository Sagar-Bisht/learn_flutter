import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  accountName: Text("Sagar"),
                  accountEmail: Text("ssb@gmail.com"),
                  /*currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image.png"),
                  ),*/
                  currentAccountPicture: ClipOval(
                    child: Image(
                      image: AssetImage("assets/images/image.png"),
                      fit: BoxFit.contain, // Set the scale type here
                    ),
                  ),
                )
            ) ,
            ListTile(
              leading: Icon(CupertinoIcons.home ,color: Colors.white , size: 30) ,
              title: Text("Home" , style: TextStyle(color: Colors.white , fontSize: 16)) ,
                trailing: Icon(Icons.arrow_forward , color: Colors.white)
            ) ,
            ListTile(
                leading: Icon(CupertinoIcons.profile_circled ,color: Colors.white , size: 30) ,
                title: Text("Profile" , style: TextStyle(color: Colors.white , fontSize: 16)) ,
                trailing: Icon(Icons.arrow_forward , color: Colors.white)
            ) ,
            ListTile(
                leading: Icon(CupertinoIcons.settings ,color: Colors.white , size: 30) ,
                title: Text("Settings" , style: TextStyle(color: Colors.white , fontSize: 16)) ,
                trailing: Icon(Icons.arrow_forward , color: Colors.white)
            ) ,
          ],
        ),
      ),
    );
  }
}
