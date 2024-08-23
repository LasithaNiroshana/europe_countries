import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:europe_countries/data/country.dart';

part 'api_service.g.dart';

//Defining base rest api url
@RestApi(baseUrl: "https://restcountries.com/v3.1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

//get reuqest to get countries
  @GET("/region/europe?fields=name,capital,flags,region,languages,population")
  Future<List<Country>> getEuropeanCountries();
}

final dio = Dio();
final apiService = ApiService(dio);
