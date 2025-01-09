import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/message_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  Future<void> loadMessages() async {
    final String response = await rootBundle.loadString('assets/data/datamessage.json');
    final List<dynamic> data = json.decode(response);
    _messages = data.map((e) => Message.fromJson(e)).toList();
    notifyListeners();
  }
}
