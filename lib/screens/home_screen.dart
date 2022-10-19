import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_feed_clone/components/post_divider.dart';
import 'package:flutter_twitter_feed_clone/components/post_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _faker = Faker();
  final _random = Random();
  final availablePostImageUris = [
    "assets/images/post1.jpeg",
    "assets/images/post2.jpeg",
    "assets/images/post3.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_avatar.png"),
          ),
        ),
        title: const Text("Home"),
      ),
      body: ListView(
        children: [
          const PostDivider(),
          ...Iterable.generate(10).map((e) {
            var hasContent = _random.nextBool();
            var hasImage = hasContent ? _random.nextBool() : true;
            return Column(
              children: [
                PostListItem(
                  profileImageUri: "assets/images/profile_avatar.png",
                  userName: _faker.person.name(),
                  userHandle: "@${_faker.person.firstName().toLowerCase()}",
                  createdAt: "${_random.nextInt(24)}h",
                  content: hasContent ? _faker.lorem.sentence() : null,
                  postImageUri: hasImage
                      ? availablePostImageUris[
                          _random.nextInt(availablePostImageUris.length)]
                      : null,
                ),
                const PostDivider(),
              ],
            );
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.post_add),
      ),
    );
  }
}
