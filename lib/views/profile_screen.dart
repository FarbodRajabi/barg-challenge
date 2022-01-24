import 'package:barg/models/user_profile.dart';
import 'package:barg/views/components/friend_card.dart';
import 'package:barg/views/components/shape01.dart';
import 'package:barg/views/components/user_info_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final UserProfile userProfile;

  const ProfileScreen({
    Key? key,
    required this.userProfile,
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
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Friends : ',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return FriendCard(
                          userProfile: userProfile.friends[index],
                          onPress: () {
                            Get.to(
                                () => ProfileScreen(userProfile: userProfile));
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemCount: userProfile.friends.length,
                    ),
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
            userProfile.greeting,
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
                UserInfoText(title: 'balance', text: userProfile.balance),
                const Spacer(),
                UserInfoText(title: 'age', text: userProfile.age.toString()),
              ],
            ),
            UserInfoText(title: 'company', text: userProfile.company),
            UserInfoText(title: 'eyeColor', text: userProfile.eyeColor),
            UserInfoText(title: 'e-mail', text: userProfile.email),
            UserInfoText(title: 'phone', text: userProfile.phone),
            UserInfoText(title: 'register', text: userProfile.registered),
            UserInfoText(title: 'address', text: userProfile.address),
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
                    text: userProfile.about,
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
                  Text(
                    userProfile.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  userProfile.isOwner
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
