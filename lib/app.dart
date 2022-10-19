import 'package:flutter/material.dart';
import 'package:flutter_twitter_feed_clone/navigations/main_navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var activeIndex = 0;

    return const MaterialApp(
      title: "Flutter Test",
      home: MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
