import 'package:flutter_persistencia/dao/contact_dao.dart';
import 'package:flutter_persistencia/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, 'bytebank.db');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(ContactDao.tableSql);
  }, version: 1, onDowngrade: onDatabaseDowngradeDelete);
}

Future<int> save(Contact contact) async {
  final Database db = await createDatabase();
  final Map<String, dynamic> contactMap = ContactDao().toMap(contact);
  return db.insert('contacts', contactMap);
}

Future<List<Contact>> findAll() async {
  final Database db = await createDatabase();
  List<Map<String, dynamic>> maps = await db.query('contacts');
  final List<Contact> contacts = ContactDao().toList(maps);
  return contacts;
}
