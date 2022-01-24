import 'package:barg/models/user_profile.dart';
import 'package:barg/repositories/main_repository.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var usersList = <UserProfile>[].obs;
  var isLoading = false.obs;

  final mainRepository = MainRepository();

  @override
  void onInit() async {
    await getUsers();
    super.onInit();
  }

  Future<void> getUsers() async {
    isLoading(true);
    await Future.delayed(const Duration(seconds: 5));
    final userListJson = await mainRepository.fetchUsersList();
    final users = userFromJson(userListJson);
    usersList(users);
    isLoading(false);
  }
}
