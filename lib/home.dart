import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [];

// Widget showListItems(List items ){

// return PopupMenuItem(child: [])
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("HOME PAGE"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("profile")),
                const PopupMenuItem(child: Text("settings")),
                const PopupMenuItem(child: Text("change password")),
                PopupMenuItem(
                  child: const Text('more'),
                  onTap: () {
                    
                  },
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
