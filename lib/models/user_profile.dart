import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'friend.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    required String guid,
    required bool isOwner,
    required String balance,
    required String picture,
    required int age,
    required String eyeColor,
    required String name,
    required String gender,
    required String company,
    required String email,
    required String phone,
    required String address,
    required String about,
    required String registered,
    required double latitude,
    required double longitude,
    required List<String> tags,
    @Default([]) List<Friend> friends,
    required String greeting,
    required String favoriteFruit,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

List<UserProfile> userFromJson(String str) => List<UserProfile>.from(
    json.decode(str).map((x) => UserProfile.fromJson(x)));
