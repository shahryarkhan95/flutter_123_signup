import 'package:flutter/material.dart';

void main() {
  User userOne = User();
  print(userOne.username);
}

class User {
  String username = 'mario';
  int age = 23;
}

void login() {
  print('user logged in');
}
