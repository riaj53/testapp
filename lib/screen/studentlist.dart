import 'package:education/screen/books.dart';
import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List<String> items = <String>[
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
  ];
  String dropdownValue = 'Class 3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11171c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Select your class name',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                height: 40,
                width: 120,
                decoration: const BoxDecoration(
                    color: Color(0xff00b9be),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: DropdownButton(
                      dropdownColor: Colors.blue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      value: dropdownValue,
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                                color: Color(0xff11171c), fontSize: 20),
                          ),
                        );
                      }).toList()),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Books()));
              },
              child: const Text(
                'Go',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  shape: const StadiumBorder(),
                  primary: Colors.yellow.shade800),
            ),
          )
        ],
      ),
    );
  }
}
