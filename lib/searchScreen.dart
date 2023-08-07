import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:crypto/NewsScreen.dart';
import 'package:crypto/article.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.filterUrl, required this.title});
  final String filterUrl;
  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future<List<Article>?> getNews() async {
    debugPrint('response article aaaaaaaa');

    try {
      var url = Uri.parse(widget.filterUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        debugPrint('response article lenghth $data');

        List<Article> model = List<Article>.from(
            data['articles'].map((x) => Article.fromJson(x)));

        return model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Widget afficher(Article selectedArticle) {
    debugPrint('selectedArticle $selectedArticle');
    return GestureDetector(
      onTap: () {
        Article articlex = selectedArticle;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => details(
                    artilex: articlex,
                  )),
        );
      },
      child: Card(
        color: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    selectedArticle.author ?? '',
                    style: TextStyle(
                        color: Provider.of<Colr>(context).bkgcol == 0
                            ? Color.fromARGB(197, 47, 207, 235)
                            : Color.fromARGB(255, 56, 61, 58),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                    selectedArticle.urlToImage ??
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ40aesDnSMKKzbiaE3-LnrxiULCPJ9VGmi17wWSdGa&s",
                    width: 150,
                    height: 150,
                    fit: BoxFit.fill),
                const SizedBox(
                  width: 5.0,
                  height: 150.0,
                ),
                Flexible(
                  child: Card(
                    color: Provider.of<Colr>(context).bkgcol == 0
                        ? Color.fromARGB(197, 47, 207, 235)
                        : Color.fromARGB(204, 125, 142, 133),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          selectedArticle.title ?? '',
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedArticle.description ?? '',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedArticle.url ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedArticle.urlToImage ?? '',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          selectedArticle.publishedAt ?? '',
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedArticle.content ?? '',
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          widget.title + ' NEWS',
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<Article>?>(
          future: getNews(),
          builder: (ctx, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occurred',
                    style: const TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                List<Article> data = snapshot.data!;
                return Column(
                  children: [
                    for (Article article in data)
                      if (article.urlToImage != null) afficher(article)
                  ],
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        // body: _userModel == null || _userModel!.isEmpty
        //     ? const Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     : ListView.builder(
        //         itemCount: _userModel!.length,
        //         itemBuilder: (context, index) {
        //           return afficher(index);
        //         },
        //       ),
      ),
    );
  }
}
