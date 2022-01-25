import 'dart:async';
import 'package:barg/models/user_profile.dart';
import 'package:flutter/services.dart' show rootBundle;

class MainRepository {
  Future<String> fetchUsersList() async {
    return await rootBundle.loadString('assets/userPrfofile.json');
  }
}
