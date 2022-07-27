import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/data.dart';
import 'package:training/page_2/recent.dart';
// import 'package:training/page-1/news.dart';

class Yangiliklar extends StatelessWidget {
  const Yangiliklar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.indigo[800],
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "Explore",
                    style: TextStyle(
                      letterSpacing: 0.5,
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white12,
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  // OutlinedButton.icon(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.search,
                  //     color: Colors.white,
                  //     size: 32,
                  //   ),
                  //   label: const Text(
                  //     "What are you looking for?",
                  //     style: TextStyle(color: Colors.white, fontSize: 18),
                  //   ),
                  //   style: OutlinedButton.styleFrom(
                  //     minimumSize: const Size(500, 50),
                  //     padding: const EdgeInsets.only(right: 50),
                  //     primary: Colors.white,
                  //     backgroundColor: Colors.white24,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    ImageName().icons[index],
                                    color: Colors.indigo[400],
                                    size: 45,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  ImageName().names[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 10),
                          ],
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Recent Search",
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  const Search()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
