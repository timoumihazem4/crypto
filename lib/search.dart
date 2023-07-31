import 'package:crypto/NewsScreen.dart';
import 'package:crypto/article.dart';
import 'package:crypto/backend/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String filterUrl = "";

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(158, 158, 158, 1),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'SEARCH',
          style: TextStyle(
              color: Color.fromARGB(255, 86, 6, 120),
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Provider.of<Colr>(context, listen: false).bkgcol,
        width: double.infinity,
        height: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'What Action are you interrested in ?',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _controller,
            onSubmitted: (String value) async {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Thanks!'),
                    content: Text(
                        'You want to search Actions related to "$value" ? '),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            filterUrl =
                                'https://newsapi.org/v2/everything?q=tesla&from=2023-06-17&domains=$value.com,teslarati.com,electrek.co&sortBy=publishedAt&apiKey=9ed3be1814f348d7a0f50b4a9c27ebb7';
                          });

                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            decoration: const InputDecoration(
              icon: Icon(Icons.search),
              labelText: "search",
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.search,
              color: Colors.pink,
              size: 24.0,
            ),
            label: const Text(
              'SEARCH',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SearchScreen(
                          filterUrl: filterUrl,
                        )),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 7, 139, 139),
                foregroundColor: const Color.fromARGB(255, 32, 2, 69),
                minimumSize: const Size(200, 80)),
          ),
        ]),
      ),
    );
  }
}

// class SearchService {
//   Future<List<Article>?> getUsers() async {
//     debugPrint('response article aaaaaaaa');

//     try {
//       var url = Uri.parse("hgjhgjgfghjh"); //Uri.parse(Search.filterUrl);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         debugPrint('response article lenghth $data');

//         List<Article> model = List<Article>.from(
//             data['articles'].map((x) => Article.fromJson(x)));

//         return model;
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     return null;
//   }
// }

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.filterUrl});
  final String filterUrl;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future<List<Article>?> getUsers() async {
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
        color: Colors.green[500],
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedArticle.title ?? '',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        selectedArticle.description ?? '',
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(selectedArticle.url ?? ''),
                      Text(
                        selectedArticle.urlToImage ?? '',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        selectedArticle.publishedAt ?? '',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        selectedArticle.content ?? '',
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
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
          'SEARCH NEWS',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<Article>?>(
          future: getUsers(),
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
