import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../class/class.dart';
import '../../pages/Resturnet.dart';

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
