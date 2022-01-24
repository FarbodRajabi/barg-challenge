import 'package:barg/controllers/main_controller.dart';
import 'package:barg/views/components/shimmer_widget.dart';
import 'package:barg/views/components/user_card.dart';
import 'package:barg/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.2,
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage('http://placehold.it/32x32'),
                ),
              ),
              onTap: () {
                Get.to(
                  ProfileScreen(
                    userProfile: mainController.usersList[0],
                  ),
                );
              },
            ),
            const Text(
              'Koch Hartman',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        // actions: [

        // ],
      ),
      body: Obx(
        () {
          return Center(
            child: mainController.isLoading.value
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return _buildBargShimmer();
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: 5)
                : Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          final users = mainController.usersList;
                          return UserCard(
                            name: users[index].name,
                            email: users[index].email,
                            picture: users[index].picture,
                            address: users[index].address,
                            onPress: () {
                              Get.to(
                                () => ProfileScreen(
                                  userProfile: users[index],
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: Colors.green,
                            indent: 20,
                            endIndent: 20,
                          );
                        },
                        itemCount: mainController.usersList.length),
                  ),
          );
        },
      ),
    );
  }

  ListTile _buildBargShimmer() {
    return const ListTile(
      leading: ShimmerWidget.circular(
        width: 64,
        height: 64,
      ),
      title: ShimmerWidget.rectangular(
        height: 16,
      ),
      subtitle: ShimmerWidget.rectangular(
        height: 14,
      ),
    );
  }
}
