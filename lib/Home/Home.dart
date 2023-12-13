import 'package:carousel_slider/carousel_slider.dart';
import 'package:eminonu_guide/pages/Resturnet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import '../class/class.dart';
import '../pages/Karakoy.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const _drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Eminönü guide',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        imagess[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'welcomes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 300.0,
              autoPlay: true,
              aspectRatio: 16 / 9,
            ),
            itemCount: imagess.length,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: iconsd.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          const SizedBox(
            height: 20,
          ),
          BuildHello(),
        ],
      ),
    );
  }

  Widget BuildHello() => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              '''This method will save memory by building items once it becomes necessary. This way they won't be built if they're not currently meant to be visible on screen. It can be used to build different child item widgets related to content or by item index.''',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
          children: [
            TextSpan(
              text: 'welcomes',
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.to(
                    const Resturent(),
                  );
                },
            ),
          ],
        ),
      );
}

List<IconData> iconsd = [
  Icons.map,
  Icons.face,
  Icons.security,
  Icons.call,
];
List<String> icontext = [
  'Location',
  'Face',
  'Security',
  'Call',
];

class _drawer extends StatelessWidget {
  const _drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: titlesd.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text(
                titlesd[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              onTap: () {
                Get.to(
                  const Resturent(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
