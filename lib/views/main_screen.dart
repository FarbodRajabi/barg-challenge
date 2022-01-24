import 'package:barg/views/components/user_card.dart';
import 'package:barg/views/profile_screen.dart';
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
                Get.to(
                  const ProfileScreen(
                    isOwner: true,
                    email: 'kochhartman@bisba.com',
                    about:
                        'Voluptate magna est elit esse aliqua minim aliqua veniam elit reprehenderit. Veniam anim ex ea proident. Proident in dolor et proident elit elit anim. Culpa sit ea consectetur proident tempor mollit. Fugiat cillum ut officia enim in excepteur incididunt incididunt duis. Voluptate proident sit exercitation et qui. Laboris voluptate fugiat in excepteur mollit velit occaecat duis cupidatat adipisicing excepteur Lorem do Lorem.\r\n',
                    address: '755 Vermont Court, Rote, Indiana, 1362',
                    balance: '\$1,835.03',
                    company: 'BISBA',
                    eyeColor: 'green',
                    gender: 'male',
                    name: 'Koch Hartman',
                    phone: '+1 (923) 566-2621',
                    registered: '2016-06-14T12:33:12 -05:-30',
                    greeting:
                        'Hello, Koch Hartman! You have 4 unread messages.',
                    age: 34,
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
