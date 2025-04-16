import 'package:flutter/material.dart';
import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/utils/available_images.dart';

class Feed {
  final int id;
  final int userId;
  final String createdAt;
  final String description;
  final AssetImage bannerImg;
  final String userName;
  final AssetImage userImage;

  const Feed({
    required this.id,
    required this.createdAt,
    required this.userId,
    required this.userName,
    required this.userImage,
    this.description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra.',
    this.bannerImg = AvailableImages.postBanner,
  });
}

final List<User> users = [
  User(
    id: 1,
    name: 'Matt Maxwell',
    photo: AvailableImages.man1,
    gender: 'Male',
    age: 28,
  ),
  User(
    id: 2,
    name: 'Maria Perez',
    photo: AvailableImages.woman1,
    gender: 'Female',
    age: 25,
  ),
  User(
    id: 3,
    name: 'Craig Jordan',
    photo: AvailableImages.man2,
    gender: 'Male',
    age: 30,
  ),
  User(
    id: 4,
    name: 'Charlotte Mckenzie',
    photo: AvailableImages.woman2,
    gender: 'Female',
    age: 27,
  ),
];

final List<Feed> feeds = [
  Feed(
    id: 1,
    userId: users[0].id,
    userName: users[0].name,
    userImage: users[0].photo,
    createdAt: '20 minutes ago',
  ),
  Feed(
    id: 2,
    userId: users[1].id,
    userName: users[1].name,
    userImage: users[1].photo,
    createdAt: '1 hour ago',
  ),
  Feed(
    id: 3,
    userId: users[2].id,
    userName: users[2].name,
    userImage: users[2].photo,
    createdAt: '2 hours ago',
  ),
];

