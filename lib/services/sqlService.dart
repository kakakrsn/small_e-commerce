import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/item_model.dart';

class SQLService {
  Database? db;

  Future openDB() async {
    try {
      // Get a location using getDatabasesPath
      var databasesPath = await getDatabasesPath();
      String path = join(databasesPath, 'getuk.db');

      // open the database
      db = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async {
          print(db);
          this.db = db;
          createTables();
        },
      );
      return true;
    } catch (e) {
      print("ERROR IN OPEN DATABASE $e");
      return Future.error(e);
    }
  }

  createTables() async {
    try {
      var qry = "CREATE TABLE IF NOT EXISTS getuk ( "
          "id INTEGER PRIMARY KEY,"
          "name TEXT,"
          "weight TEXT,"
          "image Text,"
          "desc TEXT,"
          "price REAL,"
          "fav INTEGER,"
          "rating REAL,"
          "datetime DATETIME)";
      await db?.execute(qry);
      qry = "CREATE TABLE IF NOT EXISTS cart_list ( "
          "id INTEGER PRIMARY KEY,"
          "shop_id INTEGER,"
          "name TEXT,"
          "weight TEXT,"
          "desc TEXT,"
          "image Text,"
          "price REAL,"
          "fav INTEGER,"
          "rating REAL,"
          "datetime DATETIME)";

      await db?.execute(qry);
    } catch (e) {
      print("ERROR IN CREATE TABLE");
      print(e);
    }
  }

  Future saveRecord(ShopDataModel data) async {
    await this.db?.transaction((txn) async {
      var qry =
          'INSERT INTO getuk(name, weight,price, image, desc,rating,fav) VALUES("${data.name}", "${data.weight}", ${data.price}, "${data.image}", "${data.desc}",${data.rating},${data.fav ? 1 : 0})';
      int id1 = await txn.rawInsert(qry);
      return id1;
    });
  }

  Future setItemAsFavourite(int id, bool flag) async {
    var query = "UPDATE getuk set fav = ? WHERE id = ?";
    return await this.db?.rawUpdate(query, [flag ? 1 : 0, id]);
  }

  Future getItemsRecord() async {
    try {
      var list = await db?.rawQuery('SELECT * FROM getuk', []);
      return list ?? [];
    } catch (e) {
      return Future.error(e);
    }
  }

  Future getCartList() async {
    try {
      var list = await db?.rawQuery('SELECT * FROM cart_list', []);
      return list ?? [];
    } catch (e) {
      return Future.error(e);
    }
  }

  Future addToCart(ShopDataModel data) async {
    await this.db?.transaction((txn) async {
      var qry =
          'INSERT INTO cart_list(shop_id, name, weight,price, image, desc,rating,fav) VALUES(${data.id}, "${data.name}", "${data.weight}",${data.price}, "${data.image}", "${data.desc}",${data.rating},${data.fav ? 1 : 0})';
      int id1 = await txn.rawInsert(qry);
      return id1;
    });
  }

  Future removeFromCart(int shopId) async {
    var qry = "DELETE FROM cart_list where shop_id = ${shopId}";
    return await this.db?.rawDelete(qry);
  }
}
