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

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _userEdited = false;

  Contact _editedContact;

  @override
  void initState() {
    super.initState();

    if (widget.contact == null) {
      _editedContact = Contact();
    } else {
      _editedContact = Contact.fromMap(widget.contact.toMap());

      _nameController.text = _editedContact.name;
      _emailController.text = _editedContact.email;
      _phoneController.text = _editedContact.phone;
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
          child: Padding(
            padding: EdgeInsets.all(10),
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
                  controller: _nameController,
                  decoration: InputDecoration(labelText: "Nome"),
                  onChanged: (text) {
                    setState(() {
                      _userEdited = true;
                      _editedContact.name = text;
                    });
                  },
                ),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "E-mail"),
                  onChanged: (text) {
                    _userEdited = true;
                    _editedContact.email = text;
                  },
                ),
                TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: "Telefone"),
                  onChanged: (text) {
                    _userEdited = true;
                    _editedContact.phone = text;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
