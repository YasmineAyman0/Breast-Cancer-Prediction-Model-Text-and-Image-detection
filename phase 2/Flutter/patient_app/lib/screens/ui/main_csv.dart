import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shop_app/screens/ui/connect.dart';
import 'package:shop_app/screens/ui/csv_to_list.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mongo.connect();
  runApp(CsvToList());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List<List<dynamic>> employeeData;

  @override
  initState(){
    //create an element rows of type list of list. All the above data set are stored in associate list
//Let associate be a model class with attributes name,gender and age and associateList be a list of associate model class.


    employeeData  = List<List<dynamic>>.empty(growable: true);

  }

  getCsv() async {

    if (await Permission.storage.request().isGranted) {

//store file in documents folder

      String dir = (await getExternalStorageDirectory())!.path + "/mycsv.csv";
      String file = "$dir";

      File f = new File(file);

// convert rows to String and write as csv file

      var csv = const ListToCsvConverter().convert(employeeData);
      f.writeAsString(csv);
    }else{

      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter CSV Upload"),
      ),
      body: SingleChildScrollView(
        child: ListView(

          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),

          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                itemCount: employeeData.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(employeeData[index][0].toString()),
                          Text(employeeData[index][1].toString()),
                          Text(employeeData[index][2].toString()),
                          Text(employeeData[index][3].toString()),
                          Text(employeeData[index][4].toString()),
                          Text(employeeData[index][5].toString()),
                          Text(employeeData[index][6].toString()),
                          Text(employeeData[index][8].toString()),
                          Text(employeeData[index][9].toString()),
                          Text(employeeData[index][10].toString()),
                          Text(employeeData[index][11].toString()),
                          Text(employeeData[index][12].toString()),
                          Text(employeeData[index][13].toString()),
                          Text(employeeData[index][14].toString()),
                          Text(employeeData[index][15].toString()),
                          Text(employeeData[index][16].toString()),
                          Text(employeeData[index][17].toString()),
                          Text(employeeData[index][18].toString()),
                          Text(employeeData[index][19].toString()),
                          Text(employeeData[index][20].toString()),
                          Text(employeeData[index][21].toString()),
                          Text(employeeData[index][22].toString()),
                          Text(employeeData[index][23].toString()),
                          Text(employeeData[index][24].toString()),
                          Text(employeeData[index][25].toString()),
                          Text(employeeData[index][26].toString()),
                          Text(employeeData[index][27].toString()),
                          Text(employeeData[index][28].toString()),
                          Text(employeeData[index][29].toString()),



                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
                height: 30,
                child: TextButton(
                  child: Text("Export to CSV",style: TextStyle(color: Colors.white),),
                  onPressed: getCsv,
                ),
              ),
            ),

          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }



}
