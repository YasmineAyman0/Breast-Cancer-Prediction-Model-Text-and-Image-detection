import 'package:flutter/material.dart';
import 'package:doctors_app/screens/ui/connect.dart';
import 'package:doctors_app/screens/ui/mongodb.dart';

class display extends StatefulWidget {
  @override
  State<display> createState() => _display();
}

class _display extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.  white30,
        appBar: AppBar(
          backgroundColor:Colors. white30 ,

        ),
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: FutureBuilder(
        future: mongo.getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              var totaldata = snapshot.data.length;
              print("totalData" + totaldata.toString());
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return displayCard(
                        MongoDbModel.fromJson(snapshot.data[index]));
                  });
            } else {
              return Center(child: Text("NO data avalible"));
            }
          }
        },
      ),
    )));
  }

  Widget displayCard(MongoDbModel data) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          Text("radius_mean:  "+"${data.radius_mean}")
          ,SizedBox(height: 5,),
          Text("texture_mean:  "+  "${data.texture_mean}"),
          SizedBox(height: 5,),
          Text("perimeter_mean:  "+"${data.perimeter_mean}"),
          SizedBox(height: 5,),
          Text("area_mean:  "+"${data.area_mean}"),
          SizedBox(height: 5,),
          Text("smoothness_mean:  "+"${data.smoothness_mean}"),
          SizedBox(height: 5,),

          Text("compactness_mean:  "+"${data.compactness_mean}"),
          SizedBox(height: 5,),
          Text("concavity_mean:  "+"${data.concavity_mean}"),
          SizedBox(height: 5,),
          Text("concave_points_mean:  "+"${data.concave_points_mean}"),
          SizedBox(height: 5,),


          Text("symmetry_mean:  "+"${data.symmetry_mean}"),
          SizedBox(height: 5,),

          Text("fractal_dimension_mean:  "+"${data.fractal_dimension_mean}"),
          SizedBox(height: 5,),

          Text("radius_se:  "+"${data.radius_se}"),

          SizedBox(height: 5,),
          Text("texture_se:  "+"${data.texture_se}"),

          SizedBox(height: 5,),
          Text("perimeter_se:  "+"${data.perimeter_se}"),

          SizedBox(height: 5,),
          Text("area_se:  "+"${data.area_se}"),

          SizedBox(height: 5,),
          Text("smoothness_se:  "+"${data.smoothness_se}"),

          SizedBox(height: 5,),

          Text("compactness_se:  "+"${data.compactness_se}"),



          SizedBox(height: 5,),

          Text("concavity_se:  "+"${data.concavity_se}"),

          SizedBox(height: 5,),
          Text("concave_points_se:  "+"${data.concave_points_se}"),

          SizedBox(height: 5,),
          Text("symmetry_se:  "+"${data.symmetry_se}"),

          SizedBox(height: 5,),
          Text("fractal_dimension_se:  "+"${data.fractal_dimension_se}"),


          SizedBox(height: 5,),

          Text("radius_worst:  "+"${data.radius_worst}"),

          SizedBox(height: 5,),
          Text("texture_worst:  "+"${data.texture_worst}"),

          SizedBox(height: 5,),

          Text("perimeter_worst:  "+"${data.perimeter_worst}"),
          SizedBox(height: 5,),

          Text("area_worst:  "+"${data.area_worst}"),

          SizedBox(height: 5,),
          Text("smoothness_worst:  "+"${data.smoothness_worst}"),
          SizedBox(height: 5,),

          Text("compactness_worst:  "+"${data.compactness_worst}"),

          SizedBox(height: 5,),
          Text("concavity_worst:  "+"${data.concavity_worst}"),
          SizedBox(height: 5,),

          Text("concave_points_worst:  "+"${data.concave_points_worst}"),

          SizedBox(height: 5,),
          Text("symmetry_worst:  "+"${data.symmetry_worst}"),

          SizedBox(height: 5,),
          Text("fractal_dimension_worst:  "+"${data.fractal_dimension_worst}"),

          SizedBox(height: 5,),
          Text("Prediction:  "+"${data.Prediction}", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 15)),




        ],
      ),
    ));
  }
}
