import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/newsAPI.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'article.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
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
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
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
                ),
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
          'NEWS',
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
          future: ApiService().getNews(),
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

class details extends StatefulWidget {
  const details({
    super.key,
    required this.artilex,
  });
  final Article artilex;

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Provider.of<Colr>(context).bkgcol == 0
            ? Color.fromARGB(198, 204, 231, 236)
            : Color.fromARGB(102, 182, 193, 187),
        title: Text(
          'Details',
          style: TextStyle(
              color: Provider.of<Colr>(context).bkgcol == 0
                  ? Color.fromARGB(197, 47, 207, 235)
                  : Color.fromARGB(255, 56, 61, 58),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: Provider.of<Colr>(context).bkgcol == 0
            ? const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(198, 204, 231, 236),
                    Color.fromARGB(197, 169, 221, 233),
                    Color.fromARGB(197, 107, 215, 234),
                    Color.fromARGB(197, 47, 207, 235),
                  ]))
            : const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(102, 182, 193, 187),
                    Color.fromARGB(153, 176, 194, 185),
                    Color.fromARGB(204, 125, 142, 133),
                    Color.fromARGB(255, 56, 61, 58),
                  ])),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Text(
                  widget.artilex.title!,
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(widget.artilex.urlToImage!),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Text(
                    widget.artilex.description ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //softWrap: true,
                    //overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.artilex.url ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.artilex.urlToImage ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.artilex.publishedAt ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.artilex.content ?? '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              SizedBox(
                height: 140.0,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
