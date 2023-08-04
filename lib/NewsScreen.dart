import 'package:crypto/newsAPI.dart';
import 'package:flutter/material.dart';

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
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    selectedArticle.author ?? '',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 86, 6, 120),
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
                    color: Colors.blueGrey,
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
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'NEWS',
          style: TextStyle(
              color: Colors.deepPurple,
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
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Details',
          style: TextStyle(
              color: Color.fromARGB(255, 86, 6, 120),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueGrey[300],
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                widget.artilex.title!,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 21, 164, 183),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
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
    );
  }
}
