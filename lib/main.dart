import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var date = DateTime.now().toString();
  var month = DateTime.now().month.toString();
  var year = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Color(0xFF355BC0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "22 Jan,2023",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        hintText: "Find Services ...",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF242525),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Explore our services",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFF1C1C1B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
