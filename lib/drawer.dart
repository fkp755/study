import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //
          UserAccountsDrawerHeader(
            accountName: Text("Faisalkhan"), accountEmail: Text("fkp755@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1630763882488-73a2d2267c0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),

            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: (Icon(Icons.edit)),
          ),
          ListTile(
            leading: Icon(Icons.mail_outline),
            title: Text("Email"),
            subtitle: Text("fkp755@gmail.com"),
            trailing: (Icon(Icons.edit)),
          ),
          ListTile(
            leading: Icon(Icons.phone_android_outlined),
            title: Text("Phone"),
            subtitle: Text("9930749460"),
            trailing: (Icon(Icons.edit)),
          )
        ],
      ),
    );
  }
}
