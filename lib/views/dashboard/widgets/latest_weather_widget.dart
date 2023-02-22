import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/constants/color_constants.dart';
import 'package:weather_app/constants/image_constants.dart';
import 'package:weather_app/widgets/text_widget.dart';

class LatestWeatherWidget extends StatelessWidget {
  final String humidity;
  final String rain;
  final String wind;
  const LatestWeatherWidget({Key? key,required this.humidity,required this.rain,required this.wind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myText(text: "18", fontFamily: "Russo", size: 60, color: Colors.white),
                  myText(text: "Thunderstorm", fontFamily: "Chakra", size: 18, color: whiteColor)
                ],
              ),
              Image.asset(mildRain,height: 200)
            ]),
        const SizedBox(height: 40,),
        Container(
          width: MediaQuery.of(context).size.width,
          padding:const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(wind2,),
                  myText(fontWeight:FontWeight.w500, text: "$wind km/h", fontFamily: "Chakra", size: 18, color: whiteColor),
                  const SizedBox(height: 5),
                  myText( text: "Wind", fontFamily: "Chakra", size: 16, color: whiteColor)
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(drop,),
                  myText(fontWeight:FontWeight.w500, text: humidity, fontFamily: "Chakra", size: 18, color: whiteColor),
                  const SizedBox(height: 5),
                  myText( text: "Humidity", fontFamily: "Chakra", size: 16, color: whiteColor)
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(cloudRain,),
                  myText(fontWeight:FontWeight.w500, text: "$rain%", fontFamily: "Chakra", size: 18, color: whiteColor),
                  const SizedBox(height: 5),
                  myText( text: "Rain", fontFamily: "Chakra", size: 16, color: whiteColor)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
