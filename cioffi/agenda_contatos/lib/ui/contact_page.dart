import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ContactPage extends StatefulWidget {
  final Contact contact;

  ContactPage({this.contact});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Contact _editedContact;

  @override
  void initState() {
    super.initState();

    if (widget.contact == null) {
      _editedContact = Contact();
    } else {
      _editedContact = Contact.fromMap(widget.contact.toMap());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_editedContact.name ?? "Novo Contato"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: _editedContact.img == null
                              ? AssetImage("assets/images/person.png")
                              : FileImage(File(_editedContact.img)))),
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Nome"),
                onChanged: (text){
                  setState(() {
                    _editedContact.name = text;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
