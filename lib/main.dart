import 'package:flutter/material.dart';
import 'package:nart_assignment_11_09/calls.dart';
import 'package:nart_assignment_11_09/chats.dart';
import 'package:nart_assignment_11_09/communities.dart';
import 'package:nart_assignment_11_09/updates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _addContact() {}

  int _selectedIndex = 0;
  List<Widget> screens = [
    ChatsScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        title: Text("WhatsApp"),
        backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      ),
      body: Center(child: screens[_selectedIndex]),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        child: Icon(Icons.add_circle),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Color.fromRGBO(0, 115, 0, 1)),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Communities",),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
        ],
      ),
    );
  }
}

