import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/data.dart';
import 'package:training/page-1/news.dart';

class Abouts extends StatelessWidget {
  const Abouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.indigo[800],
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.circle),
                    child: Image.network(
                      "https://source.unsplash.com/random/124562",
                      fit: BoxFit.cover,
                      // cacheHeight: 35,
                      // cacheWidth: 35,
                    ),
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Hi, Widya",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                "Discover Trending and\nLatest News",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              const SizedBox(height: 10),
              const Text(
                "Discover your news with easy play",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
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
                              backgroundColor: Colors.indigo[400],
                              child: Icon(
                                ImageName().icons[index],
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              ImageName().names[index],
                              style: TextStyle(
                                  color: Colors.indigo[200], fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    );
                  }),
                ),
              ),
              const News(),
            ],
          ),
        ),
      ],
    );
  }
}
