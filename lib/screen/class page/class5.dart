import 'package:flutter/material.dart';

class Class5 extends StatefulWidget {
  const Class5({Key? key}) : super(key: key);

  @override
  _Class5State createState() => _Class5State();
}

class _Class5State extends State<Class5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 5",
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
