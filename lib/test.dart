import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
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
                  child: const Text("More"),
                  onTap: () {
                    // Dismiss the existing popup list.
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    // Show a new set of list.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              ListTile(
                                title: Text("Item 1"),
                              ),
                              ListTile(
                                title: Text("Item 2"),
                              ),
                              ListTile(
                                title: Text("Item 3"),
                              ),
                            ],
                          ),
                        ),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
