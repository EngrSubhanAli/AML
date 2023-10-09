import 'package:flutter/material.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class CameraOnResultScreen extends StatelessWidget {
  const CameraOnResultScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Video Recodring
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 300,
      height: 200,
      color: blueAxent,
      child: HtmlElementView(
        key: UniqueKey(),
        viewType: 'result',
      ),
    );
  }
}
