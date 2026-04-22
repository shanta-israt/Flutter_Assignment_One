import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 165, 93),
        title: Text("Homepage", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(15), child: Text("Welcome Users")),
          Text("Welcome to The Homepage"),
          Container(
            height: 450,
            width: 530,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            color: const Color.fromARGB(255, 255, 188, 2),
            child: Text("This is a Container"),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: const Color.fromARGB(255, 7, 154, 246),
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HomePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}