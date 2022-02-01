import 'package:education/screen/homepage.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202329),
      body: Stack(
        children: [
          Container(
            height: 630,
            decoration: const BoxDecoration(
                color: Color(0xff11171c),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            child: Image(image: AssetImage('assets/images/2.png')),
          ),
          const Center(
            child: Text(
              "Education",
              style: TextStyle(color: Color(0xff00b9be), fontSize: 30),
            ),
          ),
          Column(
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 260,
              )),
              Center(
                child: Text(
                  """  Wellcome to our educational app
          here you will get all school
                     math sulations""",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                  child: const Text(
                    "Get Start",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      primary: const Color(0xff00b9be),
                      shape: const StadiumBorder(),
                      elevation: 20),
                ),
              ),
              Container(
                height: 110,
              )
            ],
          ),
        ],
      ),
    );
  }
}
