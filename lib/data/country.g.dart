// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      region: json['region'] as String,
      languages: Map<String, String>.from(json['languages'] as Map),
      population: (json['population'] as num).toInt(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'flags': instance.flags,
      'region': instance.region,
      'languages': instance.languages,
      'population': instance.population,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      commonName: json['commonName'] as String,
      officialName: json['officialName'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'commonName': instance.commonName,
      'officialName': instance.officialName,
    };

Flags _$FlagsFromJson(Map<String, dynamic> json) => Flags(
      pngImage: json['pngImage'] as String,
      svgImage: json['svgImage'] as String,
    );

Map<String, dynamic> _$FlagsToJson(Flags instance) => <String, dynamic>{
      'pngImage': instance.pngImage,
      'svgImage': instance.svgImage,
    };
