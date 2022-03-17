import 'package:chat_ui/widgets/category_selector.dart';
import 'package:chat_ui/widgets/favorite_contacts.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
        ),
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30.0,
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(), //Foi desenvolvido noutra página
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  FavoriteContacts(), //Foi desenvolvido noutra página
                  RecentChats(), //Foi desenvolvido noutra página
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
