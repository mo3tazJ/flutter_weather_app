class WeatherModel {
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});
  factory WeatherModel.fromJson(dynamic data) {
    var targetedData = data["forecast"]["forecastday"][0]["day"];
    return WeatherModel(
      date: data["location"]['localtime'],
      temp: targetedData["avgtemp_c"],
      maxTemp: targetedData["maxtemp_c"],
      minTemp: targetedData["mintemp_c"],
      weatherStateName: targetedData["condition"]["text"],
    );
  }

  @override
  String toString() {
    return "$weatherStateName \nMax temp: $maxTemp \nMin temp: $minTemp";
  }
}
