import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music/consts/colors.dart';
import 'package:music/consts/text_style.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          8.0,
        ),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              alignment: Alignment.center,
              child: Icon(Icons.music_note),
            )),
            SizedBox(
              height: 12,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                    16,
                  ))),
              child: Column(
                children: [
                  Text(
                    "Music Name",
                    style: ourStyle(
                      color: bgDarkColor,
                      family: bold,
                      size: 24,
                    ),
                  ),
                  Text(
                    "Artist Name",
                    style: ourStyle(
                      color: bgDarkColor,
                      family: bold,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "0:0",
                        style: ourStyle(color: bgDarkColor),
                      ),
                      Expanded(
                          child: Slider(value: 0.0, onChanged: (newValue) {})),
                      Text(
                        "04:00",
                        style: ourStyle(color: bgDarkColor),
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
