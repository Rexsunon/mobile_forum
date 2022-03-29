import 'package:flutter/material.dart';
import 'package:mobile_forum/src/util/assets.dart';

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        // color: Colors.white,
        border: Border.all(color: Colors.black, width: 0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // recommendation.image != null
          //     ?
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                Assets.dp,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // : Container(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Gear 5th",
                  style: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  softWrap: true,
                  style: TextStyle(fontSize: 13.0),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: const Icon(Icons.comment_outlined), onPressed: () {}),
              // const Icon(Icons.favorite, color: Colors.red),
              // const Icon(Icons.share_outlined),
            ],
          )
        ],
      ),
    );
  }
}
