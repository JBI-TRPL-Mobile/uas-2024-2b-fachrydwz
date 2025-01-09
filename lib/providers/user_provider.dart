import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class UserProvider with ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  Future<void> loadUsers() async {
    final String response = await rootBundle.loadString('assets/data/datauser.json');
    final List<dynamic> data = json.decode(response);
    _users = data.map((e) => User.fromJson(e)).toList();
    notifyListeners();
  }
}
