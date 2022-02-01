import 'package:education/screen/studentlist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color inactiveColor = Color(0xff202329);
const Color activeColor = Color(0xff00b9be);

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color teacher = inactiveColor;
  Color student = inactiveColor;
  void updateColor(int gender) {
    if (gender == 1) {
      teacher = activeColor;
      student = inactiveColor;
    }
    if (gender == 2) {
      student = activeColor;
      teacher = inactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11171c),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 190),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          FontAwesomeIcons.chalkboardTeacher,
                          color: Colors.white,
                          size: 95,
                        ),
                        Text(
                          "Teacher",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    height: 250,
                    width: 170,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inactiveColor),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          FontAwesomeIcons.graduationCap,
                          color: Colors.white,
                          size: 95,
                        ),
                        Text(
                          "Student",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    height: 250,
                    width: 170,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inactiveColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const StudentList()));
                },
                child: const Text(
                  "Start",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff00b9be),
                  shape: const StadiumBorder(),
                  elevation: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
