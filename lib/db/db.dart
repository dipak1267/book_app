import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  DB._init();

  static final DB instance = DB._init();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
