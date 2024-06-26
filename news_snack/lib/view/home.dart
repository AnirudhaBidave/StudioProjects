import 'package:flutter/material.dart';
import 'package:news_snack/model/newsAre.dart';
import 'package:news_snack/view/widgets/NewsContainer.dart';
import 'package:news_snack/controller/fetchNews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late NewsArt newsArt;

  GetNews () async{
    newsArt = await FetchNews.fetchNews();
    setState(() {

    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            GetNews();
          },
          itemBuilder: (context, index){
        return Newscontainer(
              ImgURL: newsArt.ImgURL,
              newsDes: newsArt.newsDes,
              newsHead: newsArt.newsHead,
              newsURL: newsArt.newsURL,
              newsCnt: newsArt.newsCnt,);
        })
    );
  }
}
