import 'package:flutter/material.dart';

class Class6 extends StatefulWidget {
  const Class6({Key? key}) : super(key: key);

  @override
  _Class6State createState() => _Class6State();
}

class _Class6State extends State<Class6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 6",
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
