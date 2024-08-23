import 'package:flutter/material.dart';
import 'package:europe_countries/data/country.dart';

class CountryDetailScreen extends StatelessWidget {
  final Country country;

  const CountryDetailScreen({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    // print('Country Name: ${country.name.commonName}');
    // print('Capital: ${country.capital.join(', ')}');
    // print('Population: ${country.population}');
    // print('Region: ${country.region}');
    // print('Languages: ${country.languages.values.join(', ')}');

//Displaying country details
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name.commonName,
        style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              country.flags.pngImage,
              width: 100,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Official Name: ${country.name.officialName}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Capital: ${country.capital.join(', ')}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Population: ${country.population}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Region: ${country.region}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Languages: ${country.languages.values.join(', ')}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
