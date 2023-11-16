import 'package:flutter/material.dart';

import '../class/class.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                  child: Text(titlesd[currentPageIndex]),
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

