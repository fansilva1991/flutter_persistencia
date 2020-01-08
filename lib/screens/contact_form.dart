import 'package:flutter/material.dart';
import 'package:flutter_persistencia/models/contact.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Novo Contato'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome Completo'),
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: TextField(
                  controller: _accountNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Número da Conta'),
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: SizedBox(
                    width: double.maxFinite,
                    child: RaisedButton(
                      child: Text('Criar'),
                      onPressed: () {
                        final String name = _nameController.text;
                        final int accountNumber =
                            int.tryParse(_accountNumberController.text);
                        final contact = new Contact(0, name, accountNumber);
                        Navigator.pop(context, contact);
                      },
                    )),
              )
            ],
          ),
        ));
  }
}
