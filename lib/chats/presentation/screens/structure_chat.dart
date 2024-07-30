import 'package:flutter/material.dart';
import 'package:maybe_app/chats/presentation/screens/chat_view.dart';

class StructureChat extends StatelessWidget {

  const StructureChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ars semma',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqojNBK0o_cjyu0MtujKG78_kEuT6CaTeWVA&s"),
            ),
          ),
          title: const Text('ARS SEMMA'),
        ),
        body: const ChatView()
        )
    );
  }
}