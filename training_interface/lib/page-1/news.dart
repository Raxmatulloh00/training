import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/data.dart';
import 'package:training/page-1/topnews.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Today",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "View All",
              style: TextStyle(fontSize: 18, color: Colors.pink[200]),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i = 0; i <= 1; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://source.unsplash.com/random/${i}",
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      ImageName().trending[i],
                      style: const TextStyle(fontSize: 16),
                    ),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(60, 25),
                        backgroundColor: ImageName().rang[i],
                        primary: Colors.white),
                  ),
                  Text(
                    ImageName().soz[i],
                    style: const TextStyle(fontSize: 16.5),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    ImageName().hours[i],
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              )
          ],
        ),
        const SizedBox(height: 30),
        const TopNews(),
      ],
    );
  }
}
