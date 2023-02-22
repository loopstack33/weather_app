import 'package:http/http.dart' as http;
import 'package:weather_app/service/api_urls.dart';

class ApiService{

  /* ---- Current weather or realtime weather API method allows a user to get up to date
  current weather information in json and xml. The data is returned as a Current Object. ---- */

  ////////////////////////GET CURRENT WEATHER
  Future<http.Response> fetchCurrentWeather(context, q) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.current}?q=$q'),
        headers: APIUrls.headers);
    return response;
  }

  /* ---- Search or Autocomplete API returns matching cities and towns. ---- */

  ////////////////////////SEARCH WEATHER
  Future<http.Response> searchWeather(context, q) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.search}?q=$q'),
        headers: APIUrls.headers);
    return response;
  }

  /* --- Astronomy API method allows a user to get up to date information for sunrise, sunset, moonrise,
  moonSet, moon phase and illumination in json. --- */

  ////////////////////////GET ASTRONOMY UPDATES
  Future<http.Response> fetchAstronomy(context, q) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.astronomy}?q=$q'),
        headers: APIUrls.headers);
    return response;
  }

   /* --- History weather API method returns historical weather for a date on or after 1st Jan, 2010
    (depending upon subscription level) as json. --- */

  ////////////////////////GET HISTORY UPDATES
  Future<http.Response> fetchHistory(context, q, date, lang) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.history}?q=$q&dt=$date&lang=$lang&hour=&end_dt='),
        headers: APIUrls.headers);
    return response;
  }

  /* --- Forecast weather API method returns up-to next 14 day weather forecast and weather alert as json. It contains
   astronomy data, day weather forecast and hourly interval weather information for a given city. --- */

  ////////////////////////GET FORECAST UPDATES
  Future<http.Response> fetchForecast(context, q, days) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.forecast}?q=$q&days=$days'),
        headers: APIUrls.headers);
    return response;
  }


  /* --- Time Zone API method allows a user to get up to date time zone and local time information in json. --- */

  ////////////////////////GET TIME ZONE UPDATES
  Future<http.Response> fetchTimeZone(context, q) async {
    final response = await http.get(
        Uri.parse('${APIUrls.baseUrl}${APIUrls.timezone}?q=$q'),
        headers: APIUrls.headers);
    return response;
  }

}