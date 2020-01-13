import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String contactTable = "contactTable";
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String phoneColumn = "phoneColumn";
final String emailColumn = "emailColumn";
final String imgColumn = "imgColumn";

class ContactHelper{

  static final ContactHelper _instance = ContactHelper.internal();

  factory ContactHelper() => _instance;

  ContactHelper.internal();

  Database _db;

  get db{
    if(_db != null){
      return _db;
    } else{
      _db = initDb();
    }
  }

  initDb() async{
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "contats.db");

    openDatabase(path, version: 1, onCreate: (Database db, int newerVersion) async{
      await db.execute(
        "CREATE TABLE $contactTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, $emailColumn TEXT)"
      );
    });
  }
}

class Contact{
  int id;
  String name;
  String phone;
  String email;
  String img;

  Contact.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    phone = map[phoneColumn];
    email = map[emailColumn];
    img = map[imgColumn];
  }

  Map toMap(){
    // Map<String, dynamic> map;

    // map[nameColumn] = name;
    // map[phoneColumn] = phone;
    // map[emailColumn] = email;
    // map[imgColumn] = img;
    Map<String, dynamic> map = {
      nameColumn: name,
      phoneColumn: phone,
      emailColumn: email,
      imgColumn: img
    };

    if(id != null){
      map[idColumn] = id;
    }

    return map;
  }

  @override
  String toString() {
    return "Contact$id [name: $name, phone; $phone, email: $email, img: $img]";
  }
}