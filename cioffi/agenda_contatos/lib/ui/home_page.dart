import 'dart:io';

import 'package:flutter/material.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  List<Contact> contacts = List();

  @override
  void initState() {
    super.initState();

    // Contact c = Contact();
    // c.name = "Tiago";
    // c.email = "maka@gmail.com";
    // c.phone = "(11) 987117137";

    // helper.saveContact(c);

    helper.getAllContacts().then((list) {
      setState(() {
        contacts = list;
      });
    });

    helper.getAllContacts().then((list) => print(list));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Contatos"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
          onPressed: () {},
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return _contactCard(context, index);
          },
        ),
      ),
    );
  }

  Widget _contactCard(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: contacts[index].img == null
                            ? AssetImage("assets/images/person.png")
                            : FileImage(File(contacts[index].img)))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      contacts[index].name ?? "",
                      textAlign: TextAlign.left, 
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      contacts[index].email ?? "",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      contacts[index].phone ?? "",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
