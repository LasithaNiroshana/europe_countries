// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:europe_countries/data/country.dart';
import 'package:europe_countries/services/api_service.dart';
import 'country_detail_screen.dart';

class CountryListScreen extends StatefulWidget {
  final ApiService apiService;

const CountryListScreen({super.key, required this.apiService});

  @override
_CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  late Future<List<Country>> _countries;
  String _sortCriteria = 'Name';

  @override
  void initState() {
    super.initState();
    _fetchCountries();
  }

  void _fetchCountries() {
    setState(() {
      _countries = widget.apiService.getEuropeanCountries();
    });
  }

  void _sortCountries(List<Country> countries) {
    switch (_sortCriteria) {
      case 'Name':
        countries.sort((a, b) => a.name.commonName.compareTo(b.name.commonName));
        break;
      case 'Population':
        countries.sort((a, b) => a.population.compareTo(b.population));
        break;
      case 'Capital':
        countries.sort((a, b) => a.capital.first.compareTo(b.capital.first));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('European Countries',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          DropdownButton<String>(
            dropdownColor: Colors.blue,
            style:const TextStyle(color: Colors.white),
            iconEnabledColor: Colors.white,
            value: _sortCriteria,
            items: ['Name', 'Population', 'Capital'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value)
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _sortCriteria = value;
                });
              }
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Country>>(
        future: _countries,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No countries found.'));
          } else {
            // snapshot.data?.forEach((country) {
            //   print('Country Name: ${country.name.commonName}');
            //   print('Capital: ${country.capital.join(', ')}');
            //   print('Population: ${country.population}');
            //   print('Region: ${country.region}');
            //   print('Languages: ${country.languages.values.join(', ')}');
            // });
            final countries = snapshot.data!;
            _sortCountries(countries);
            return ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                final country = countries[index];
                return ListTile(
                  leading: Image.network(
                    country.flags.pngImage,
                    width: 50,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                  title: Text(country.name.commonName),
                  subtitle: Text(country.capital.join(', ')),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CountryDetailScreen(country: country),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
