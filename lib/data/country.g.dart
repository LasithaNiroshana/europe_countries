// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
    name: Name.fromJson(json['name'] as Map<String, dynamic>),
    capital: (json['capital'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [], 
    flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
    region: json['region'] as String? ?? 'Unknown', 
    languages: (json['languages'] as Map<String, dynamic>?)
            ?.map((k, e) => MapEntry(k, e as String)) ??
        {}, 
    population: json['population'] as int? ?? 0, 
  );
}


Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'flags': instance.flags,
      'region': instance.region,
      'languages': instance.languages,
      'population': instance.population,
    };

Name _$NameFromJson(Map<String, dynamic> json) {
  return Name(
    commonName: json['common'] as String? ?? 'Unknown', 
    officialName: json['official'] as String? ?? 'Unknown',
  );
}

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'commonName': instance.commonName,
      'officialName': instance.officialName,
    };

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return Flags(
    pngImage: json['png'] as String? ?? '', 
    svgImage: json['svg'] as String? ?? '', 
  );
}

Map<String, dynamic> _$FlagsToJson(Flags instance) => <String, dynamic>{
      'pngImage': instance.pngImage,
      'svgImage': instance.svgImage,
    };
