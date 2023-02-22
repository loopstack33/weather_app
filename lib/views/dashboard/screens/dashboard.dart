import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/image_constants.dart';
import 'package:weather_app/views/dashboard/controller/dashboard_provider.dart';
import 'package:weather_app/views/dashboard/widgets/temperature_widget.dart';
import 'package:weather_app/views/dashboard/widgets/today_temp_widget.dart';
import 'package:weather_app/widgets/button_widget.dart';
import '../../../constants/color_constants.dart';
import '../../../widgets/text_widget.dart';
import '../widgets/latest_weather_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key,}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DashboardProvider>(context, listen: false).getCurrentWeather(context,"Lahore");

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:mainColor,
      body:context.watch<DashboardProvider>().isLoading? const Center(child: CircularProgressIndicator())
        : Padding(
        padding:const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myText(fontWeight: FontWeight.w300, text: "${context.read<DashboardProvider>().realtimeModel.location.name}, ${context.read<DashboardProvider>().realtimeModel.location.country}",
                        fontFamily: "Russo", size: 22, color: whiteColor),
                    myText(text:  DateFormat.yMMMMd('en_US').format(DateTime.parse(context.read<DashboardProvider>().realtimeModel.location.localtime.toString())),
                        fontFamily: "Chakra", size: 14, color: whiteColor),
                  ],
                ),
                const ButtonWidget(image:notification)
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                   LatestWeatherWidget(
                    rain: context.read<DashboardProvider>().realtimeModel.current.cloud.toString(),
                    humidity: context.read<DashboardProvider>().realtimeModel.current.humidity.toString(),
                    wind: context.read<DashboardProvider>().realtimeModel.current.windKph.toString(),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText(text: "Today", fontFamily: "SFPro", size: 21, color: whiteColor,
                          fontWeight: FontWeight.w700),
                      Row(
                        children: [
                          myText(text: "Next 14 Days ", fontFamily: "SFPro", size: 14, color: whiteColor,
                              fontWeight: FontWeight.w700),
                          const Icon(Icons.chevron_right,color:whiteColor ,)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                      height: 130,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return const TemperatureWidget(temp: "18°C", image: angledRain, time: "10 am");
                          },
                          separatorBuilder: (context,index)=>
                          const SizedBox(width: 30,), itemCount: 10)
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

