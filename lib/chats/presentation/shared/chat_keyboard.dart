import 'package:flutter/material.dart';

class ChatKeyboard extends StatelessWidget {
  const ChatKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textMessageController = TextEditingController();
    final generalTheme = Theme.of(context).colorScheme;

    final borderForTextField = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
        hintText: "Write your message",
        enabledBorder: borderForTextField,
        focusedBorder: borderForTextField,
        filled: true,
        suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => alertDialogMessage(message: textMessageController.value.text, context: context)
              )
            ));

    return TextFormField(decoration: inputDecoration, controller: textMessageController);
  }

  AlertDialog alertDialogMessage({required String message, required BuildContext context}) {
    return AlertDialog(
        title: const Text('Test alert dialog'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ]);
  }
}
