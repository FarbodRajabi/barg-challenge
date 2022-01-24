import 'dart:async';
import 'package:barg/models/user_profile.dart';
import 'package:flutter/services.dart' show rootBundle;

class MainRepository {
  Future<String> fetchUsersList() async {
    return await rootBundle.loadString('assets/userPrfofile.json');
  }

  Future<UserProfile?> findUserById(String id) async {
    final result = await rootBundle.loadString('assets/userPrfofile.json');

    final users = userFromJson(result);

    for (int i = 0; i < users.length; i++) {
      if (users[i].guid == id) {
        return users[i];
      }
    }
  }
}
