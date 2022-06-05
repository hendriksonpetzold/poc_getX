import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class FruitButton extends StatelessWidget {
  final String fruit;
  final Callback onPressed;
  const FruitButton({
    Key? key,
    required this.fruit,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(fruit),
    );
  }
}
