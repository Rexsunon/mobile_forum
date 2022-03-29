import 'package:flutter/material.dart';
import 'package:mobile_forum/src/forum/forum_view.dart';

import '../util/assets.dart';
import '../util/constants.dart';
import 'Components/ForumCard.dart';

class ForumListView extends StatelessWidget {
  const ForumListView({Key? key}) : super(key: key);

  static const routeName = '/forum_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forums"),
        centerTitle: false,
        actions: const [
          CircleAvatar(backgroundImage: AssetImage(Assets.dp)),
          SizedBox(width: kPadding),
        ],
      ),
      body: ListView.builder(
        primary: false,
        itemCount: 5,
        itemBuilder: (context, index) => ForumCard(onTap: () => Navigator.restorablePushNamed(context, ForumView.routeName),title: "Anime Chat Room", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
