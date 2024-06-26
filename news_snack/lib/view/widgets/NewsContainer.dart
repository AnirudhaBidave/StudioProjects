import 'package:flutter/material.dart';
import 'package:news_snack/view/detail_view.dart';

class Newscontainer extends StatelessWidget {
  String ImgURL;
  String newsHead;
  String newsDes;
  String newsURL;
  String newsCnt;
  Newscontainer({super.key,
  required this.ImgURL,
  required this.newsDes,
  required this.newsHead,
  required this.newsURL,
  required this.newsCnt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.network(
            height: 400,
            width: MediaQuery.of(context).size.width,
            ImgURL),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 10,),
          Text(newsHead.length > 70 ?
              "${newsHead.substring(0, 70)}..." : newsHead
              , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Text(newsDes, style: TextStyle(fontSize: 13, color: Colors.black38),),
              SizedBox(height: 10,),
              Text(
                newsCnt.length > 500 ? newsCnt.substring(0, 500) :
                "${newsCnt.substring(0, newsCnt.length-15)}...",
                style: TextStyle(fontSize: 16),),
        ],),),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailViewScreen(NewsUrl: newsURL)));}, child: Text("Read More...")),
                ),
              ],
            ),
            SizedBox(height: 20,)
      ]),
    );
  }
}
