import 'package:flutter/material.dart';
import 'package:flutter_persistencia/screens/contact_form.dart';
import 'package:flutter_persistencia/screens/contacts_list.dart';
import 'package:flutter_persistencia/screens/dashboard.dart';
import 'database/app_database.dart';
import 'models/contact.dart';

void main() {
  runApp(MyApp());
  // save(Contact(2, 'alex', 2000)).then((id) {
  //   findAll().then((contacts) => debugPrint(contacts.toString()));
  // });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: Dashboard());
  }
}
