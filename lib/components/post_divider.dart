import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostDivider extends StatelessWidget {
  const PostDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      height: 2,
      color: Colors.black12,
    );
  }
}
