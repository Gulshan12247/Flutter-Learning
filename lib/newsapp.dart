

// we are using the get api to fetching the news//

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:practice2/Model/NewsModel.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  late Future<NewsModel> _newsModelFuture;

  @override
  void initState() {
    super.initState();
    _newsModelFuture=fetchNews();
  }
  Future<NewsModel> fetchNews() async {
    const Url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=40033eebb64e4e60bedc8ec7486097a3";
    var response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return NewsModel.fromJson(result);
    } else {
      throw Exception('Failed to load news');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
      ),
      body: FutureBuilder<NewsModel>(
        future: _newsModelFuture,
        builder: (BuildContext context, AsyncSnapshot<NewsModel> snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? Center(child: CircularProgressIndicator())
              : snapshot.hasError
              ? Center(child: Text('Error: ${snapshot.error}'))
              : snapshot.hasData
              ? ListView.builder(
            itemCount: snapshot.data!.articles?.length ?? 0,
            itemBuilder: (context, index) {
              var article = snapshot.data!.articles![index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      article.urlToImage.toString()),
                ),
                title: Text(article.title.toString()),
                subtitle: Text(article.description.toString()),
              );
            },
          )
              : Center(child: Text('No data available'));
        },
      ),
    );
  }
}
