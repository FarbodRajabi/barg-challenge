import 'package:barg/views/components/user_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
