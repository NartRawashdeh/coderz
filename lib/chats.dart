import 'package:flutter/material.dart';
import 'package:nart_assignment_11_09/model/my_contacts_class.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  List<MyContactsClass> myContacts = [
    MyContactsClass(
      contactImg: "assets/images/Emp1.jpg",
      contactName: "Ali Ahmad",
      contactLastMessage: "Talk to you later",
      contactLastMessageDate: "Yesterday",
    ),
    MyContactsClass(
      contactImg: "assets/images/Emp1.jpg",
      contactName: "Mohammad Adnan",
      contactLastMessage: "Call me as soon as possible",
      contactLastMessageDate: "12/9/2025",
    ),
    MyContactsClass(
      contactImg: "assets/images/Emp1.jpg",
      contactName: "Sara Ali",
      contactLastMessage: "Sorry, I'm in a meeting call you later",
      contactLastMessageDate: "10/09/2025",
    ),
    MyContactsClass(
      contactImg: "assets/images/Emp1.jpg",
      contactName: "Khalid Anas",
      contactLastMessage: "Thank you",
      contactLastMessageDate: "05/09/2025",
    ),
    MyContactsClass(
      contactImg: "assets/images/Emp1.jpg",
      contactName: "Dana Osama",
      contactLastMessage: "lets meet at 6 PM",
      contactLastMessageDate: "30/08/2025",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(myContacts[index].contactImg),
              ),
              title: Text(myContacts[index].contactName),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              subtitle: Text(myContacts[index].contactLastMessage),
              subtitleTextStyle: TextStyle(
                color: Colors.white24,
                fontWeight: FontWeight.w900,
              ),
              trailing: Text(myContacts[index].contactLastMessageDate),
              leadingAndTrailingTextStyle: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: myContacts.length,
        ),
      ),
    );
  }
}
