import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final String profileImageUri;
  final String userName;
  final String userHandle;
  final String createdAt;
  final String? content;
  final String? postImageUri;

  PostListItem({
    super.key,
    required this.profileImageUri,
    required this.userName,
    required this.userHandle,
    required this.createdAt,
    this.content,
    this.postImageUri,
  }) {
    if (content == null && postImageUri == null) {
      throw ArgumentError("Either content or postImageUri must be provided");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashFactory: InkSparkle.splashFactory,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profileImageUri),
                    )),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          userName,
                          style: Theme.of(context).textTheme.titleSmall?.merge(
                                const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          userHandle,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      const Text("•"),
                      const SizedBox(
                        width: 4.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          createdAt,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  if (content != null) ...[
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      content!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                  if (postImageUri != null) ...[
                    const SizedBox(
                      height: 8.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        postImageUri!,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.message),
                            SizedBox(width: 2.0),
                            Text('1'),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.share),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.favorite),
                            SizedBox(width: 2.0),
                            Text('20'),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.upload),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
