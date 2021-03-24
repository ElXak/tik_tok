import 'package:flutter/material.dart';

import 'widgets/actions_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'widgets/video_description.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Following'),
            SizedBox(width: 15),
            Text(
              'For you',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [VideoDescription(), ActionsToolbar()],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Top section
          topSection,

          // Middle section
          middleSection,

          // Bottom section
          BottomToolbar(),
        ],
      ),
    );
  }
}
