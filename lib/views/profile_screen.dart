import 'package:barg/views/components/shape01.dart';
import 'package:barg/views/components/user_info_text.dart';
import 'package:barg/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final bool isOwner;
  final String name,
      balance,
      eyeColor,
      company,
      email,
      gender,
      phone,
      address,
      about,
      registered,
      greeting;
  final int age;

  const ProfileScreen({
    Key? key,
    required this.isOwner,
    required this.name,
    required this.balance,
    required this.eyeColor,
    required this.company,
    required this.email,
    required this.gender,
    required this.phone,
    required this.address,
    required this.about,
    required this.registered,
    required this.greeting,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topBar(),
            _userInfo(),
            _greeting(),
            Container(
              // width: Get.width,
              // height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              // color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Friends : ',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  Container(
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FriendCard();
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 12,
                          );
                        },
                        itemCount: 8),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _greeting() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade800,
            blurRadius: 10,
            offset: const Offset(3, 3),
          ),
        ],
        border: Border.all(
          color: Colors.green.shade800.withOpacity(.05),
        ),
      ),
      child: Column(
        children: [
          Text(
            '\'Greeting\'',
            style: TextStyle(
              fontSize: 26,
              color: Colors.green.shade800,
            ),
          ),
          Text(
            greeting,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  Container _userInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade800,
            blurRadius: 10,
            offset: const Offset(3, 3),
          ),
        ],
        border: Border.all(
          color: Colors.green.shade800.withOpacity(.05),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                UserInfoText(title: 'balance', text: balance),
                const Spacer(),
                UserInfoText(title: 'age', text: age.toString()),
              ],
            ),
            UserInfoText(title: 'company', text: company),
            UserInfoText(title: 'eyeColor', text: eyeColor),
            UserInfoText(title: 'e-mail', text: email),
            UserInfoText(title: 'phone', text: phone),
            UserInfoText(title: 'register', text: registered),
            UserInfoText(title: 'address', text: address),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'about : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: about,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Stack _topBar() {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          height: Get.height * .2,
          width: Get.width,
          child: CustomPaint(painter: Shape01()),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: Get.height * .2,
          child: Row(
            children: [
              Row(
                children: [
                  const Text(
                    'Koch Hartman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  isOwner
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          height: 24,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'edit',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green.shade800,
                            ),
                          )),
                        )
                      : Container(),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.2,
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(.5),
                      blurRadius: 13,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage('http://placehold.it/32x32'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FriendCard extends StatelessWidget {
  const FriendCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.green.shade800,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.2,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(.5),
                  blurRadius: 13,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage('http://placehold.it/32x32'),
            ),
          ),
          Text(
            'Farbod Rajabi',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
