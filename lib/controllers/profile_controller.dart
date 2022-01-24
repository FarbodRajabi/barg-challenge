import 'package:barg/models/user_profile.dart';
import 'package:barg/repositories/main_repository.dart';
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

  Future<void> getUser(String id) async {
    isLoading(true);
    final user = mainRepository.findUserById(id);
  }
}
