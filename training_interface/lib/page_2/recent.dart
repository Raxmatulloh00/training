import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/data.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      for (var i = 0; i <= 2; i++)
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Image.network(
                "https://source.unsplash.com/random/${i}",
                fit: BoxFit.cover,
                width: 160,
                height: 110,
              ),
              SizedBox(width: 10),
              Container(
                width: 170,
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        Page2().names[i],
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Page2().colors[i],
                        minimumSize: const Size(50, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Text(
                      Page2().malumot[i],
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                      // textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "${Page2().min[i]} Min Read • Today",
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    ]);
  }
}

// Row(
//   children: [
//     Image.network(
//       "https://source.unsplash.com/random/5555",
//       fit: BoxFit.cover,
//       width: 160,
//       height: 110,
//     ),
//     SizedBox(width: 10),
//     Container(
//       color: Color.fromRGBO(244, 67, 54, 1),
//       width: 170,
//       height: 110,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           OutlinedButton(
//             onPressed: () {},
//             child: const Text(
//               "Business",
//               style: TextStyle(color: Colors.white),
//             ),
//             style: OutlinedButton.styleFrom(
//               backgroundColor: Colors.blue,
//               minimumSize: const Size(50, 30),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(4),
//               ),
//             ),
//           ),
//           const Text(
//             "Top tools to help\nyour meeting",
//             style: TextStyle(
//               fontSize: 17,
//             ),
//             // textAlign: TextAlign.start,
//           ),
//           const SizedBox(height: 2),
//           const Text(
//             "5 Min Read • Today",
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     )
//   ],
// ),
