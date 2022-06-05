import 'package:flutter/material.dart';
import 'package:poc_favorite_fruit_using_get/page/home/components/fruit_button.dart';
import 'package:poc_favorite_fruit_using_get/page/home/controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<Controller>(
          builder: (_) => Text('My favorite fruit is ${controller.fruit}'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FruitButton(
              fruit: 'Banana',
              onPressed: () {
                controller.changeFruid('Banana');
              },
            ),
            FruitButton(
              fruit: 'Orange',
              onPressed: () {
                controller.changeFruid('Orange');
              },
            ),
            FruitButton(
              fruit: 'Apple',
              onPressed: () {
                controller.changeFruid('Apple');
              },
            ),
          ],
        ),
      ),
    );
  }
}
