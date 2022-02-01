import 'package:flutter/material.dart';

class Class8 extends StatefulWidget {
  const Class8({Key? key}) : super(key: key);

  @override
  _Class8State createState() => _Class8State();
}

class _Class8State extends State<Class8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 8",
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff11171c),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 30,
              ))
        ],
      ),
      backgroundColor: const Color(0xff202329),
    );
  }
}
