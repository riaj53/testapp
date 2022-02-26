import 'package:bot_toast/bot_toast.dart';
import 'package:education/screen/books_page.dart';
import 'package:education/screen/studentlist.dart';
import 'package:education/screen/widgets/user_type_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color inactiveColor = Color(0xff202329);
const Color activeColor = Color(0xff00b9be);
enum UserType { student, teacher }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserType? userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11171c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserTypeCard(
                  ontap: () {
                    setState(() {
                      userType = UserType.teacher;
                    });
                  },
                  icon: FontAwesomeIcons.chalkboardTeacher,
                  color: userType == UserType.teacher
                      ? activeColor
                      : inactiveColor,
                  title: "Teacher"),
              UserTypeCard(
                  ontap: () {
                    setState(() {
                      userType = UserType.student;
                    });
                  },
                  icon: FontAwesomeIcons.graduationCap,
                  color: userType == UserType.student
                      ? activeColor
                      : inactiveColor,
                  title: "Student"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () {
                if (userType == UserType.student) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentList()));
                } else if (userType == UserType.teacher) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BooksPage(
                                className: "5",
                              )));
                } else {
                  BotToast.showText(
                      text: "Please select an user type",
                      contentColor: Colors.red);
                }
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
    );
  }
}
