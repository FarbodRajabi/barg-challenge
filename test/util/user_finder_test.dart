import 'package:barg/controllers/profile_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

main() {
  group('general test', () {
    test('user01 finder', () async {
      // Arrange
      String id = '1791c941-9939-4970-be9a-09739587d69b';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Koch Hartman');
    });
    test('user02 finder', () async {
      // Arrange
      String id = '97241d36-53a1-4795-8869-d998a6582892';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Wood Pitts');
    });
    test('user03 finder', () async {
      // Arrange
      String id = 'aa57a24e-eb7b-421c-9b14-581208434af3';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Gretchen Moore');
    });
    test('user04 finder', () async {
      // Arrange
      String id = 'a9998045-280b-497d-8a3f-91c3a2b41a0b';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Guerra Banks');
    });
    test('user05 finder', () async {
      // Arrange
      String id = '775d4916-18cf-48f5-b569-4929aafb5f95';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Edith Hughes');
    });
    test('user06 finder', () async {
      // Arrange
      String id = 'd288504d-548a-42fa-9468-985b96492faa';

      // Act
      final controller = Get.put(ProfileController());
      final user = await controller.getUserById(id);
      String name = user.name;

      // Assert
      expect(name, 'Tracie Cervantes');
    });
  });
}
