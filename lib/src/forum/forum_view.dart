import 'package:flutter/material.dart';
import 'package:mobile_forum/src/util/assets.dart';
import 'package:mobile_forum/src/util/constants.dart';

import '../util/themes.dart';
import 'Components/post.dart';

class ForumView extends StatelessWidget {
  const ForumView({Key? key}) : super(key: key);

  static const routeName = '/forum_view';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Assets.dp),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text("Anime Chat Room", style: headingStyle,),
                    const SizedBox(height: 10),
                    const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled", textAlign: TextAlign.center,)
                  ],
                ),
                const SizedBox(height: 18),
                Text("Posts", style: subHeadingStyle),
                const SizedBox(height: 20),
                for (int i = 0; i < 3; i++) const RecommendationItem()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
