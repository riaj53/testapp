import 'package:education/screen/class%20page/class3.dart';
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
            children: List.generate(
                12,
                (index) => BooksCard(
                    image: 'assets/images/class${widget.className}.jpg',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Class3()));
                    },
                    title: 'Class ${widget.className}')),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ));
  }
}
