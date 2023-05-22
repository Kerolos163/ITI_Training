// import 'package:sqflite/sqflite.dart';

// class DatabaseApp2
// {
//   Database db;
//   List mylist=[];
//   DatabaseApp2()
//   {
//     createDatabase();
//   }
//   createDatabase()async
//   {
//     db=await openDatabase(
//       'we.db',
//       version: 2,
//       onCreate: (d,v)async{
//        await d.execute(
//            'create table item (id integer primary key , type text ,img text,size text,color text,price text,num INTEGER )');
          
//       print('create table');
//       },
//       onOpen: (d){
//         print('open');
//         getData(d).then((value) {
//           mylist=value;
//           print(value);
//         });

//       }

//     );
//   }
//   insertData(String ty,String im,String S,String co,String pr,int val)
//   {
//     db.transaction((txn) {
//       txn.rawInsert('insert into item (type,img,size,color,price,num) values("$ty","$im","$S","$co","$pr","$val")').then((value){
//         print('inserted $value');
//       });
//       return null;
//     });
//   }
//   Future<List> getData(Database d)async
//   {
//     return await d.rawQuery('select * from item');
//   }
// }

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseApp2 {

static Database _db ;

Future<Database> get db async {
if (_db == null){
_db  = await intialDb() ;
return _db ;
}else {
return _db ;
}
}


intialDb() async {
String databasepath = await getDatabasesPath() ;
String path = join(databasepath , 'wael.db') ;
Database mydb = await openDatabase(path , onCreate: _onCreate , version: 3  , onUpgrade:_onUpgrade ) ;
return mydb ;
}

_onUpgrade(Database db , int oldversion , int newversion ) {
}

_onCreate(Database db , int version) async {
await db.execute(
    'create table item (id integer primary key , type text ,img text,size text,color text,price text,num text )');


}

readData(String sql) async {
Database mydb = await db ;
List<Map> response = await  mydb.rawQuery(sql);
return response ;
}
insertData(String sql) async {
Database mydb = await db ;
int  response = await  mydb.rawInsert(sql);
return response ;
}
updateData(String sql) async {
Database mydb = await db ;
int  response = await  mydb.rawUpdate(sql);
return response ;
}
deleteData(String sql) async {
Database mydb = await db ;
int  response = await  mydb.rawDelete(sql);
return response ;
}



}