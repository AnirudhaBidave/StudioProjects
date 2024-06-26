class NewsArt{
  String ImgURL;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsURL;

  NewsArt({
    required this.ImgURL,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsURL
  });

  static NewsArt fromAPItoApp(Map<String, dynamic> article){
    return NewsArt(ImgURL: article["urlToImage"] ?? "https://img.freepik.com/free-vector/gradient-breaking-news-logo-design_23-2151180702.jpg?t=st=1718891505~exp=1718895105~hmac=291c528cda476ad36229ce93fb633ce1c753b5e29e455351a078d323e231a35d&w=2000",
        newsHead: article["title"] ?? "--",
        newsDes: article["description"] ?? "--",
        newsCnt: article["content"] ?? "--",
        newsURL: article["url"] ?? "https://www.hindustantimes.com/technology/5g-services-to-be-set-up-across-500-cities-in-india-in-next-one-year-101663735893683.html");
  }
}
