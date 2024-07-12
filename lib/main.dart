import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 55, 84, 202),
              title: const Text('LAB ACTIVITY 2'),
              bottom: TabBar(
                tabs: [
                  Row(children: const [
                    Icon(Icons.account_box),
                    SizedBox(width: 5),
                    Text("Personal Info")
                  ]),
                  Row(children: const [
                    Icon(Icons.subject),
                    SizedBox(width: 5),
                    Text("Educational Background")
                  ]),
                  Row(children: const [
                    Icon(Icons.favorite),
                    SizedBox(width: 5),
                    Text("Skills")
                  ]),
                  Row(children: const [
                    Icon(Icons.turned_in),
                    SizedBox(width: 5),
                    Text("Interests")
                  ]),
                  Row(children: const [
                    Icon(Icons.call),
                    SizedBox(width: 5),
                    Text("Contact Details")
                  ]),
                ],
                isScrollable: true,
              ),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // add this to center the row
                    children: [
                      Image(
                          image: AssetImage("assets/profile.jpg"),
                          height: 100,
                          width: 100), // adjust the height and width as needed
                      Text(
                        "Name: Kim William Sanchez\nAge: 21\nEducation: Bachelor of Science in Information Technology",
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "School: Batangas State University Year:2021 - Present\nSchool: STI College Batangas Year: 2019 - 2021\nSchool: Bauan Technical High School Year: 2015 - 2019\nSchool: Balayong Elementary School Year: 2009 - 2015",
                  ),
                ),
                Center(
                  child: Text(
                    "Technical Skills: Programming Languages: Java, Python, Dart\nNon-Technical Skills: Communication Teamwork, Time Management and Problem Solving",
                  ),
                ),
                Center(
                  child: Text(
                    "Interests: Playing Video games, Watching Movies and Learning New Programming Languages",
                  ),
                ),
                Center(
                  child: Text(
                    "Contact Details:\n-Email:kimwilliamsanchez@gmail.com\n-Phone: 09999999999\n-Github: github.com/21-05298",
                  ),
                ),
              ],
            )));
  }
}
