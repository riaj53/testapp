import 'package:flutter/material.dart';

class Class3 extends StatefulWidget {
  const Class3({Key? key}) : super(key: key);

  @override
  _Class3State createState() => _Class3State();
}

class _Class3State extends State<Class3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 3",
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
