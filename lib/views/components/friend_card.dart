import 'package:barg/models/friend.dart';
import 'package:barg/models/user_profile.dart';
import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  final Friend userProfile;
  final VoidCallback onPress;

  const FriendCard({
    Key? key,
    required this.userProfile,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
                child: Icon(
                  Icons.person,
                  color: Colors.green.shade800,
                  size: 34,
                )),
            Text(
              userProfile.name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      onTap: onPress,
    );
  }
}
