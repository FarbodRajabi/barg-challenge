import 'package:barg/models/user_profile.dart';
import 'package:barg/repositories/main_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  // var user = UserProfile().obs;
  var isLoading = false.obs;

  final mainRepository = MainRepository();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<UserProfile> getUserById(String id) async {
    isLoading(true);
    final userListJson = await mainRepository.fetchUsersList();
    final users = userFromJson(userListJson);
    for (int i = 0; i < users.length; i++) {
      if (users[i].guid == id) {
        return users[i];
      }
    }
    Get.snackbar(
      "Not founded",
      'there is no such user like this ',
      backgroundColor: Colors.red,
      messageText: const Text(
        'there is no such user like this name',
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      titleText: const Text(
        'user not founded',
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
    isLoading(false);
    return users[0];
  }
}
