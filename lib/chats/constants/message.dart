import 'dart:convert';

class Message {
  final String _jsonMessage = """
    "placehoolderTextBox": "Escriba aqui su mensaje"
  """;

  Message();

  Map<String, dynamic> mapMessage() {
    return jsonDecode(_jsonMessage);
  }
}
