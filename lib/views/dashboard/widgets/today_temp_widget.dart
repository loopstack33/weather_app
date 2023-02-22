import 'package:flutter/material.dart';
import 'package:weather_app/widgets/text_widget.dart';

import '../../../constants/color_constants.dart';

class TodayTemperatureWidget extends StatelessWidget {
  final String image;
  final String name;
  const TodayTemperatureWidget({Key? key,required this.name,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 10)
            ),
          ]
      ),
      child: Column(
        children: [
          Image.asset(image,height: 70),
          const SizedBox(height: 10),
          myText(fontWeight:FontWeight.w600, text: name, fontFamily: "SFPro", size: 12, color: whiteColor,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
