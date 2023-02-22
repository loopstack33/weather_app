import 'package:flutter/material.dart';
import 'package:weather_app/widgets/text_widget.dart';

import '../../../constants/color_constants.dart';

class TemperatureWidget extends StatelessWidget {
  final String image;
  final String temp;
  final String time;
  const TemperatureWidget({Key? key,required this.temp,required this.image,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myText(fontWeight:FontWeight.w300, text: time, fontFamily: "Chakra", size: 14, color: whiteColor),
          const SizedBox(height: 5),
          Image.asset(image,height: 55,),
          const SizedBox(height: 5),
          myText(fontWeight:FontWeight.w500, text: temp, fontFamily: "Chakra", size: 16, color: Colors.white),


        ],
      ),
    );
  }
}
