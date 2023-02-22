class APIUrls{
  static var headers = {
    'X-RapidAPI-Key': "d69d58a6dfmsh7034716ebcd2bcbp1c92b6jsn2b1236bce842",
    'X-RapidAPI-Host': "weatherapi-com.p.rapidapi.com"
  };

  //BASE URL
  static String baseUrl='https://weatherapi-com.p.rapidapi.com';

  ///METHODS
  static String current = "/current.json";
  static String future = "/future.json";
  static String search = "/search.json";
  static String astronomy = "/astronomy.json";
  static String history = "/history.json";
  static String forecast = "/forecast.json";
  static String timezone = "/timezone.json";

}