import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/constants/color_constants.dart';

class ButtonWidget extends StatelessWidget {
  final String image;
  const ButtonWidget({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(17),

      ),
      child: Padding(
        padding:const EdgeInsets.all(12),
        child: SvgPicture.asset(image,color: whiteColor,),
      )
    );
  }
}
