import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:uvirtual_qrscan/models/scan_model.dart';
export 'package:uvirtual_qrscan/models/scan_model.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
  }

  Future<Database?> initDB() async {
    //path de base de datos

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "ScansDB.db");
    print(path);

    //Crear Base de Datos
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
CREATE TABLE Scans(
  id INTEGER PRIMARY KEY,
  tipo TEXT,
  valor TEXT
)
     ''');
    });
  }

  nuevoScanRaw(ScanModel nuevoScan) async {
    final db = await database;

    final res = await db.rawInsert('''
INSERT INTO Scans(id, tipo, valor)
VALUES(



''');
  }
}
