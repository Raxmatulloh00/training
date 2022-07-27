import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopNews extends StatelessWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Top News",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "View All",
              style: TextStyle(fontSize: 18, color: Colors.pink[200]),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Container(
                height: 120,
                color: Colors.transparent,
                margin: const EdgeInsets.all(5),
                child: Image.network(
                  "https://source.unsplash.com/random/$index",
                  width: 220,
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
