// To parse this JSON data, do
//
//     final textmodel = textmodelFromJson(jsonString);

import 'dart:convert';

Textmodel textmodelFromJson(String str) => Textmodel.fromJson(json.decode(str));

String textmodelToJson(Textmodel data) => json.encode(data.toJson());

class Textmodel {
  Data data;

  Textmodel({
    required this.data,
  });

  factory Textmodel.fromJson(Map<String, dynamic> json) => Textmodel(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  List<Language> languages;

  Data({
    required this.languages,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    languages: List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
  };
}

class Language {
  String language;

  Language({
    required this.language,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    language: json["language"],
  );

  Map<String, dynamic> toJson() => {
    "language": language,
  };
}
