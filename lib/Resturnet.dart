import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Resturent extends StatefulWidget {
  const Resturent({super.key});

  @override
  State<Resturent> createState() => _ResturentState();
}

class _ResturentState extends State<Resturent> {
  final scaffeldKey = GlobalKey<ScaffoldState>();
  //bool isExpanded = true;
  //final loermIpsum = "Lorem text very important";
  double rating = 0;
  final loremIpsum = [
    "YABANCI ÖĞRENCİ · banner-web-boyut,. Türkiye Cumhuriyeti 100 Yaşında · 2023-tyt-simulasyon-1920x700. 2023 TYT Sınav Simülasyonu · sporcu-bilgi-formu-1920x700",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Resturent',
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/kadikoy.jpg',
          ),
          buildCard(
            'Resturent 1',
            'images/uskudar.jpg',
          ),
          buildCard(
            'Expandable 1',
            'images/uskudar.jpg',
          ),
          buildCard(
            'Expandable 1',
            'images/uskudar.jpg',
          ),
        ],
      ),
    );
  }

  Widget buildCard(String title, String urlImagesd) => Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              //Image.asset(urlImagesd),
              ExpandablePanel(
                header: Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                collapsed: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/kadikoy.jpg',
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/map.png',
                              ),
                            ),
                            RatingBar.builder(
                              minRating: 1,
                              itemSize: 25,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              updateOnDrag: true,
                              onRatingUpdate: (rating) => setState(() {
                                this.rating = rating;
                              }),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '\$ 40',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      List.generate(1, (index) => loremIpsum).join('\n\n'),
                    ),
                  ],
                ),
                expanded: const Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      );
}
