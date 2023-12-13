import 'package:flutter/material.dart';

import '../Home/Home.dart';
import '../class/class.dart';

class Karakoy extends StatefulWidget {
  const Karakoy({super.key});

  @override
  State<Karakoy> createState() => _KadikoyState();
}

class _KadikoyState extends State<Karakoy> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppbarcontroll(
            titlesd[currentPageIndex],
            'images/kadikoy.jpg',
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        //width: 200,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        iconsd[index],
                                      ),

                                      Text(
                                        icontext[index],
                                      ),
                                      //ElevatedButton.icon(onPressed: (){}, icon: icon, label: label)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget sliverAppbarcontroll(
    String title,
    String imagess,
  ) =>
      SliverAppBar(
        backgroundColor: Colors.transparent,
        pinned: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          expandedTitleScale: 1.2,
          title: Text(title),
          background: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagess,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      );
}
