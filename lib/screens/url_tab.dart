import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UrlTab extends StatefulWidget {
  const UrlTab({super.key});

  @override
  State<UrlTab> createState() => _UrlTabState();
}

class _UrlTabState extends State<UrlTab> {
  var id = "";
  var title = "";
  var userId = "";

  //https://v2.jokeapi.dev/joke/Programming?type=single
  getData() async {
    var searchResult = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/3"));
    var result = json.decode(searchResult.body);
    setState(() {
      id = result['id'].toString();
      userId = result['userId'].toString();
      title = result['title'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Text(id),
    // );
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "UserID : ${id}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Title : ${title}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "userId : ${userId}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                getData();
              },
              child: const Text(
                'Send',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 8,
                    color: Colors.deepPurple,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
