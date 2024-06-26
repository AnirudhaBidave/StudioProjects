// https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5eb8e7b5921743d798672c0b76b101c4

import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:news_snack/model/newsAre.dart';

class FetchNews{
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews() async{
    final _random = new Random();
    var element = sourcesId[_random.nextInt(sourcesId.length)];
  Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$element&apiKey=d9428816c1c84859a87d4b0118ffd8e9"));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    var myArticle = articles[_random.nextInt(articles.length)];
    return NewsArt.fromAPItoApp(myArticle);
  }
}