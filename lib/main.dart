import 'package:flutter/material.dart';
import 'package:maybe_app/chats/presentation/screens/structure_chat.dart';
import 'package:maybe_app/config/theme/available_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AvailableTheme(colorSelected: 2).colorTheme(),
      home: const StructureChat()
    );
  }
}