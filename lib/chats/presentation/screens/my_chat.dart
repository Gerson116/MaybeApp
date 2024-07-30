import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  const MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    final generalTheme = Theme.of(context).colorScheme;

    List<Widget> myHistoryChat = [];
    int count = 0;

    while (myHistoryChat.length < 100) {
      myHistoryChat.add(burblesMessage(
          colors: Colors.blueGrey.shade300,
          alignment: MainAxisAlignment.start));

      myHistoryChat.add(const SizedBox(height: 10));

      myHistoryChat.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.network(
              "https://yesno.wtf/assets/no/16-b66d2db7543f5259c86abc166d6901cf.gif",
              height: 150,
              loadingBuilder: (context, child, progress) {
                return progress == null
                    ? child
                    : CircularProgressIndicator(color: generalTheme.secondary);
              },
            ),
          )
        ],
      ));

      myHistoryChat.add(const SizedBox(height: 10));

      myHistoryChat.add(burblesMessage(
          colors: Colors.blue.shade200, alignment: MainAxisAlignment.end)
      );

      myHistoryChat.add(const SizedBox(height: 10));
      count++;
    }
    return Expanded(child: ListView(children: myHistoryChat));
  }

  Row burblesMessage({required Color colors, required MainAxisAlignment alignment}) {
    BoxDecoration burbles = BoxDecoration(
      border: Border.all(color: colors, width: 2),
      borderRadius: BorderRadius.circular(20),
    );

    return Row(
      mainAxisAlignment: alignment,
      children: [
        Container(
          decoration: burbles,
          // padding: const EdgeInsets.all(10),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text("Lorem Ipsum is simply dummy")),
        )
      ],
    );
  }
}
