import 'package:flutter/material.dart';
import 'Home/Details.dart';
import 'class/class.dart';

class Emnuioi extends StatefulWidget {
  //final Image images;
  const Emnuioi({
    super.key,
  });

  @override
  State<Emnuioi> createState() => _CamiState();
}

class _CamiState extends State<Emnuioi> {
  final double coverHeight = 400;
  final double expandedHeight = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        title: const Text(
          'Emnuioi',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2.2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: imagess.length,
              itemBuilder: (BuildContext ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      //alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xffeeeee4),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 250,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  imagess[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Emnuioin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 140,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Details(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Detalis',
                              ),
                            ),
                          ),
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
  }
}
//  CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.transparent,
//             pinned: true,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.arrow_back_ios_new,
//               ),
//             ),
//             expandedHeight: 300,
//             flexibleSpace: FlexibleSpaceBar(
//               centerTitle: false,
//               expandedTitleScale: 1.2,
//               title: const Text(
//                 'Eminoin',
//               ),
//               background: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(20),
//                   bottomRight: Radius.circular(20),
//                 ),
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'images/imagesd.jpg',
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: Column(
//               children: [

//               ],
//             ),
//           ),

//         ],
//       ),
// SliverList(
//   delegate: SliverChildBuilderDelegate(
//     (context, index) {
//       return Padding(
//         padding: const EdgeInsets.all(10.0),
//         child:
//       );
//     },
//     childCount: 1,
//   ),
// ),
// Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 width: 200,
//                 height: 400,
//                 decoration: BoxDecoration(
//                   color: Colors.amber,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Image.asset(
//                       'images/imagesd.jpg',
//                       width: 200,
//                       height: 100,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                       height: 50,
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: 4,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {},
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Container(
//                                 width: 60,
//                                 height: 100,
//                                 decoration: BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: const Icon(
//                                   Icons.home,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),

//                   ],
//                 ),
//               ),
//             ),
