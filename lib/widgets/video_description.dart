import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('@firstjonny', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Video title and some other stuff'),
            Row(
              children: [
                Icon(
                  Icons.music_note,
                  size: 15,
                  color: Colors.white,
                ),
                Text('Artist name - Album name - song',
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
