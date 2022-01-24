import 'package:barg/views/components/user_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
                  radius: 24,
                  backgroundImage: NetworkImage('http://placehold.it/32x32'),
                ),
              ),
              onTap: () {
                // Get.to(page)
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return UserCard(
                  name: 'Farbod Rajabi',
                  email: 'farbod.r.j.1@gmail.com',
                  picture: 'http://placehold.it/32x32',
                  address: '755 Vermont Court, Rote, Indiana, 1362',
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.green,
                  indent: 20,
                  endIndent: 20,
                );
              },
              itemCount: 5),
        ),
      ),
    );
  }
}
