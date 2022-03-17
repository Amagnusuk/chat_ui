import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Aqui construímos a página que surge do clic na foto dusuário.
//Aqui construímos a página que surge do clic na foto dusuário.
class ChatSreen extends StatefulWidget {
  final User user;

  ChatSreen({required this.user});

  @override
  State<ChatSreen> createState() => _ChatSreenState();
}

class _ChatSreenState extends State<ChatSreen> {
  _buildMessage(Message message, bool isMe) {//Esta função foi chamada no ListView
    return Container(
      margin: isMe 
          ? EdgeInsets.only(
              top: 8.0, 
              bottom: 8.0, 
              left: 80.0
            ) 
          : EdgeInsets.only(
              top: 8.0, 
              bottom: 8.0, 
              right: 80.0
            ),
      color: Color(0xFFFFEFEE),
      child: Text(message.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            widget.user.name, //chama o nome dusuário cuja foto foi clicada
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
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    top: 15.0,
                  ),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
