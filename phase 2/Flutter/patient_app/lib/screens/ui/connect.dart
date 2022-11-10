
import 'dart:developer';

import 'package:shop_app/screens/ui/mongodb.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'ids.dart';

class mongo {


  static var db, usercollection;

  static connect() async {
    db = await Db.create(MONO_CONN_URL);
    await db.open();
    inspect(db);
    usercollection = db.collection(USER_COLLECTION);
  }
  static Future<String> insert(MongoDbModel data)async{
    try{
      var result = await usercollection.insertOne(data.toJson());
      if(result.isSuccess){
        return "data insert";
      }else{
        return"ERRO ";
      }


    }catch(e){
      print(e.toString());
      return e.toString();
    }
  }
}
