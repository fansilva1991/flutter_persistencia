import 'package:flutter/material.dart';
import 'package:flutter_persistencia/screens/contact_form.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Titulo',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                'Subtitulo',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactForm()))
              .then((contact) => debugPrint(contact.toString()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
