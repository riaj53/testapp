import 'package:flutter/material.dart';

class Class4 extends StatefulWidget {
  const Class4({Key? key}) : super(key: key);

  @override
  _Class4State createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 4",
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
