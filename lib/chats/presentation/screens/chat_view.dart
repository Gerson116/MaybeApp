import 'package:flutter/material.dart';
import 'package:maybe_app/chats/presentation/screens/my_chat.dart';
import 'package:maybe_app/chats/presentation/shared/chat_keyboard.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), 
          child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyChat(),
              SizedBox(height: 5),
              ChatKeyboard(),
            ],
        ),
        )
    );
  }
}
