import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather_app/service/api_service.dart';

import '../../../models/realtime_model.dart';

class DashboardProvider extends ChangeNotifier{
  ApiService apiService = ApiService();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  late RealtimeModel _realtimeModel;
  RealtimeModel get realtimeModel => _realtimeModel;

  Future getCurrentWeather(context,location) async{
    // _isLoading = true;
    // notifyListeners();
    apiService.fetchCurrentWeather(context,location).then((response) {
      try {

        if (response.statusCode == 200) {
          _realtimeModel = RealtimeModel.fromJson(json.decode(response.body));

          _isLoading = false;
          notifyListeners();
        }
       else if (response.statusCode == 404) {
          log("ERROR");
          _isLoading = false;
          notifyListeners();
        }
        else {
          _isLoading = false;
          notifyListeners();
        }
      } on SocketException {
        _isLoading = false;
        notifyListeners();
      } on HttpException {
        _isLoading = false;
        notifyListeners();
      } on FormatException {
        _isLoading = false;
        notifyListeners();
      }
    });
  }

}