import 'package:crypto/backend/providers/colors.dart';
import 'package:crypto/searchScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        color: Provider.of<Colr>(context).bkgcol == 0
            ? Colors.indigo[400]
            : Provider.of<Colr>(context).bkgcol == 1
                ? Colors.black
                : Colors.blueGrey,
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
            // onSubmitted: (String value) async {
            //   await showDialog<void>(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return TextButton(
            //         onPressed: () {
            //           setState(() {
            //             filterUrl =
            //                 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=cd9734364408406eae98d2aabb817877';
            //             //'https://newsapi.org/v2/everything?q=t$value&from=2023-07-03&sortBy=publishedAt&apiKey=cd9734364408406eae98d2aabb817877';
            //             // 'https://newsapi.org/v2/everything?q=$value&apiKey=cd9734364408406eae98d2aabb817877';
            //           });

            //           Navigator.pop(context);
            //         },
            //         child: const Text('OK'),
            //       );
            //     },
            //   );
            // },
            decoration: const InputDecoration(
                icon: Icon(Icons.search),
                labelText: "search",
                hoverColor: Colors.white54,
                fillColor: Colors.white54),
          ),
          const SizedBox(
            height: 60.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 32, 2, 69),
              size: 24.0,
            ),
            label: const Text(
              'SEARCH',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              debugPrint("text input ${_controller.text}");
              filterUrl =
                  //'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=cd9734364408406eae98d2aabb817877';
                  //'https://newsapi.org/v2/everything?q=${_controller.text}&from=2023-07-03&sortBy=publishedAt&apiKey=cd9734364408406eae98d2aabb817877';
                  'https://newsapi.org/v2/everything?q=${_controller.text}&apiKey=cd9734364408406eae98d2aabb817877';
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SearchScreen(
                          filterUrl: filterUrl,
                          title: _controller.text,
                        )),
              );
            },
            style: ElevatedButton.styleFrom(
                //backgroundColor: const Color.fromARGB(255, 7, 139, 139),
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
