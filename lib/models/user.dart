import 'package:flutter/material.dart';
import 'package:flutter_social/utils/available_images.dart';

class User {
  final int id;
  final String name;
  final AssetImage photo;
  final String location;
  final String gender;
  final int age;

  const User({
    required this.id,
    required this.name,
    required this.photo,
    this.location = 'Seattle, USA',
    required this.gender,
    required this.age,
  });
}

final List<String> userHobbies = [
  "Dancing",
  "Hiking",
  "Singing",
  "Reading",
  "Fishing"
]; 
