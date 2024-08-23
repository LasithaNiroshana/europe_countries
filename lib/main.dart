import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:europe_countries/pages/country_list_screen.dart';
import 'package:europe_countries/services/api_service.dart';

void main() {
  runApp(const EuropeanCountriesApp());
}

class EuropeanCountriesApp extends StatelessWidget {
  const EuropeanCountriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'European Countries',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountryListScreen(apiService: ApiService(Dio())),
    );
  }
}
