import 'dart:convert';

import 'package:api/modal.dart';
import 'package:http/http.dart' as http;
class Apihelper
{
  static final apihelper= Apihelper._();
  Apihelper._();

  Future<Textmodel> getapi()
  async {
    String link="https://google-translate1.p.rapidapi.com/language/translate/v2/languages";
    var response=await http.get(Uri.parse(link),headers: {
      "Accept-Encoding":"application/gzip",
      "X-RapidAPI-Key":"bc53e9ef48msh9433cd077ac8b15p1546eejsn93a4da922ff4",
      "X-RapidAPI-Host":"google-translate1.p.rapidapi.com",
    });
     var json=jsonDecode(response.body);
     Textmodel textmodel=Textmodel.fromJson(json);
     return textmodel;
  }
}