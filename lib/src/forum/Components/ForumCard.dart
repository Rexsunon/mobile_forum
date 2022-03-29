import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_forum/src/util/assets.dart';
import 'package:mobile_forum/src/util/constants.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({Key? key, required this.title, required this.description, this.onTap,}) : super(key: key);

  final String title;
  final String description;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.setContext(context);
    var theme = Theme.of(context);

    return InkWell(
      onTap: () => onTap!(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(kPadding),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: kHeadingFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: Text(
                      description,
                      softWrap: true,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage(Assets.dp),
                    fit: BoxFit.cover,
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
