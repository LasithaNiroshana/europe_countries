import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country{

  final Name name;
  final List<String> capital;
  final Flags flags;
  final String region;
  final Map<String,String>languages;
  final int population;

  Country({
    required this.name,
    required this.capital,
    required this.flags,
    required this.region,
    required this.languages,
    required this.population
  });

   factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
  Map<String, dynamic> toJson() => _$CountryToJson(this);

}

@JsonSerializable()
class Name{
  final String commonName;
  final String officialName;

  Name({
    required this.commonName,
    required this.officialName
  });

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);
}

 @JsonSerializable()
class Flags{
  final String pngImage;
  final String svgImage;

  Flags({
    required this.pngImage,
    required this.svgImage
  });

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
  Map<String, dynamic> toJson() => _$FlagsToJson(this);
}