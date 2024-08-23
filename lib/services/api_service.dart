import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:europe_countries/data/country.dart';

part 'api_service.g.dart';

//Defining base rest api url
// Creating Dio instance with timeout settings
final dio = Dio(
  BaseOptions(
    baseUrl: 'https://restcountries.com/v3.1/',
    connectTimeout: const Duration(seconds: 10), 
    receiveTimeout: const Duration(seconds: 8), 
  ),
);

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Get request to get countries
  @GET("/region/europe?fields=name,capital,flags,region,languages,population")
  Future<List<Country>> getEuropeanCountries();
}

final apiService = ApiService(dio);
