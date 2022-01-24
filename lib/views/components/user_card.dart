import 'package:barg/views/components/user_info_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserCard extends StatelessWidget {
  final String name, email, address, picture;
  const UserCard({
    Key? key,
    required this.name,
    required this.email,
    required this.address,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.2,
                    color: Colors.green.shade800,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(picture),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserInfoText(
                      title: 'Name',
                      text: name,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    UserInfoText(
                      title: 'e-mail',
                      text: email,
                    ),
                  ],
                ),
              ),
            ],
          ),
          _addressText(address),
        ],
      ),
    );
  }

  Widget _addressText(String address) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          'Address : ' + address,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
}
