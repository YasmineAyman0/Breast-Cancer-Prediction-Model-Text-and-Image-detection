import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/ui/mongodb.dart';

import 'package:shop_app/screens/ui/connect.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

import 'dart:async';

import 'package:shop_app/size_config.dart';


class CsvToList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CsvToListState();
  }
}

class CsvToListState extends State<CsvToList> {
  late List<List<dynamic>> employeeData;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<PlatformFile>? _paths;
  String? _extension = "csv";
  FileType _pickingType = FileType.custom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    employeeData = List<List<dynamic>>.empty(growable: true);
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Upload Data")),
        body: ListView(
          shrinkWrap: true,
          children: [
            // ,




            //ElevatedButton(onPressed: () {

            //_insertdata(     employeeData[1][0].toString(),
            //  employeeData[1][1].toString(),
            // employeeData[1][2].toString(),
            // employeeData[1][3].toString(),
            // employeeData[1][4].toString(),
            //employeeData[1][5].toString());

            // }, child: Text("insert data"))
            // ,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
                height: 30,
                child: TextButton(
                  child: Text(
                    "Upload Your data",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _openFileExplorer,
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                for (int y = 1; y < employeeData.length; y++) {
                                  _insertdata(
                                    employeeData[y][0].toString(),
                                    employeeData[y][1].toString(),
                                    employeeData[y][2].toString(),
                                    employeeData[y][3].toString(),
                                    employeeData[y][4].toString(),
                                    employeeData[y][5].toString(),
                                    employeeData[y][6].toString(),
                                    employeeData[y][7].toString(),
                                    employeeData[y][8].toString(),
                                    employeeData[y][9].toString(),
                                    employeeData[y][10].toString(),
                                    employeeData[y][11].toString(),
                                    employeeData[y][12].toString(),
                                    employeeData[y][13].toString(),
                                    employeeData[y][14].toString(),
                                    employeeData[y][15].toString(),
                                    employeeData[y][16].toString(),
                                    employeeData[y][17].toString(),
                                    employeeData[y][18].toString(),
                                    employeeData[y][19].toString(),
                                    employeeData[y][20].toString(),
                                    employeeData[y][21].toString(),
                                    employeeData[y][22].toString(),
                                    employeeData[y][23].toString(),
                                    employeeData[y][24].toString(),
                                    employeeData[y][25].toString(),
                                    employeeData[y][26].toString(),
                                    employeeData[y][27].toString(),
                                    employeeData[y][28].toString(),
                                    employeeData[y][29].toString(),

                                  );
                                }
                              },
                              child: Text("insert data"))
                          // Text(employeeData[index][0].toString()),
                          //Text(employeeData[index][1].toString()),
                          //Text(employeeData[index][2].toString()),
                          //Text(employeeData[index][3].toString()),
                          //Text(employeeData[index][4].toString()),
                          //Text(employeeData[index][5].toString()),
                          ,
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                  );
                }),

          ],
        ),
      ),
    );
  }

  openFile(filepath) async {
    File f = new File(filepath);
    print("CSV to List");
    final input = f.openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(new CsvToListConverter())
        .toList();
    print(fields);
    setState(() {
      employeeData = fields;
    });
  }

  void _openFileExplorer() async {
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: false,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      openFile(_paths![0].path);
      print(_paths);
      print("File path ${_paths![0]}");
      print(_paths!.first.extension);
    });
  }


  Future<void> _insertdata(

      String radius_mean,
      String texture_mean,
      String perimeter_mean,
      String area_mean,
      String smoothness_mean,
      String compactness_mean,
      String concavity_mean,
      String concave_points_mean,
      String symmetry_mean,
      String fractal_dimension_mean,
      String radius_se,
      String texture_se,
      String perimeter_se,
      String area_se,
      String smoothness_se,
      String compactness_se,
      String concavity_se,
      String concave_points_se,
      String symmetry_se,
      String fractal_dimension_se,
      String radius_worst,
      String texture_worst,
      String perimeter_worst,
      String area_worst,
      String smoothness_worst,
      String compactness_worst,
      String concavity_worst,
      String concave_points_worst,
      String symmetry_worst,
      String fractal_dimension_worst) async {
    var _id=M.ObjectId();
    final data = MongoDbModel(
      id:_id,
      radius_mean: radius_mean,
      texture_mean: texture_mean,
      perimeter_mean: perimeter_mean,
      area_mean: area_mean,
      smoothness_mean: smoothness_mean,
      compactness_mean: compactness_mean,
      concavity_mean: concavity_mean,
      concave_points_mean: concave_points_mean,
      symmetry_mean: symmetry_mean,
      fractal_dimension_mean: fractal_dimension_mean,
      radius_se: radius_se,
      texture_se: texture_se,
      perimeter_se: perimeter_se,
      area_se: area_se,
      smoothness_se: smoothness_se,
      compactness_se: compactness_se,
      concavity_se: concavity_se,
      concave_points_se: concave_points_se,
      symmetry_se: symmetry_se,
      fractal_dimension_se: fractal_dimension_se,
      radius_worst: radius_worst,
      texture_worst: texture_worst,
      perimeter_worst: perimeter_worst,
      area_worst: area_worst,
      smoothness_worst: smoothness_worst,
      compactness_worst: compactness_worst,
      concavity_worst: concavity_worst,
      concave_points_worst: concave_points_worst,
      symmetry_worst: symmetry_worst,
      fractal_dimension_worst: fractal_dimension_worst,
    );
    var result;
    result = await mongo.insert(data);


    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("updloded" + _id.$oid + "CSV_File")));
  }
}
