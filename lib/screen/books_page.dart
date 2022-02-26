import 'package:education/screen/class%20page/class3.dart';
import 'package:education/screen/class%20page/class4.dart';
import 'package:education/screen/class%20page/class5.dart';
import 'package:education/screen/class%20page/class6.dart';
import 'package:education/screen/class%20page/class7.dart';
import 'package:education/screen/class%20page/class8.dart';
import 'package:education/screen/class%20page/class9.dart';
import 'package:education/screen/widgets/books_card.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  final String className;
  const BooksPage({Key? key, required this.className}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Math Books",
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            children: [
              BooksCard(
                  image: 'assets/images/class3.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class3()));
                  },
                  title: 'Class 3'),
              BooksCard(
                  image: 'assets/images/class4.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class4()));
                  },
                  title: 'Class 4'),
              BooksCard(
                  image: 'assets/images/class5.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class5()));
                  },
                  title: 'Class 5'),
              BooksCard(
                  image: 'assets/images/class6.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class6()));
                  },
                  title: 'Class 6'),
              BooksCard(
                  image: 'assets/images/class7.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class7()));
                  },
                  title: 'Class 7'),
              BooksCard(
                  image: 'assets/images/class8.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class8()));
                  },
                  title: 'Class 8'),
              BooksCard(
                  image: 'assets/images/class10.png',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Class9()));
                  },
                  title: 'Class 9 & 10'),
            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ));
  }
}
