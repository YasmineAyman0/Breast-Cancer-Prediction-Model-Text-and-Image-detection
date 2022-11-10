// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel welcomeFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String welcomeToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.id,
    required this.radius_mean,
    required this.texture_mean,
    required this.perimeter_mean,
    required this.area_mean,
    required this.smoothness_mean,
    required this.compactness_mean,
    required this.concavity_mean,
    required this.concave_points_mean,
    required this.symmetry_mean,
    required this.fractal_dimension_mean,
    required this.radius_se,
    required this.texture_se,
    required this.perimeter_se,
    required this.area_se,
    required this.smoothness_se,
    required this.compactness_se,
    required this.concavity_se,
    required this.concave_points_se,
    required this.symmetry_se,
    required this.fractal_dimension_se,
    required this.radius_worst,
    required this.texture_worst,
    required this.perimeter_worst,
    required this.area_worst,
    required this.smoothness_worst,
    required this.compactness_worst,
    required this.concavity_worst,
    required this.concave_points_worst,
    required this.symmetry_worst,
    required this.fractal_dimension_worst,
    required this.Prediction
  });
  ObjectId id;
  String radius_mean;
  String texture_mean;
  String perimeter_mean;
  String area_mean;
  String smoothness_mean;
  String compactness_mean;
  String concavity_mean;
  String concave_points_mean;
  String symmetry_mean;
  String fractal_dimension_mean;
  String radius_se;
  String texture_se;
  String perimeter_se;
  String area_se;
  String smoothness_se;
  String compactness_se;
  String concavity_se;
  String concave_points_se;
  String symmetry_se;
  String fractal_dimension_se;
  String radius_worst;
  String texture_worst;
  String perimeter_worst;
  String area_worst;
  String smoothness_worst;
  String compactness_worst;
  String concavity_worst;
  String concave_points_worst;
  String symmetry_worst;
  String fractal_dimension_worst;
  String Prediction;
  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        radius_mean: json["radius_mean"],
        texture_mean: json["texture_mean"],
        perimeter_mean: json["perimeter_mean"],
        area_mean: json["area_mean"],
        smoothness_mean: json["smoothness_mean"],
        compactness_mean: json["compactness_mean"],
        concavity_mean: json["concavity_mean"],
        concave_points_mean: json["concave_points_mean"],
        symmetry_mean: json["symmetry_mean"],
        fractal_dimension_mean: json["fractal_dimension_mean"],
        radius_se: json["radius_se"],
        texture_se: json["texture_se"],
        perimeter_se: json["perimeter_se"],
        area_se: json["area_se"],
        smoothness_se: json["smoothness_se"],
        compactness_se: json["compactness_se"],
        concavity_se: json["concavity_se"],
        concave_points_se: json["concave_points_se"],
        symmetry_se: json["symmetry_se"],
        fractal_dimension_se: json["fractal_dimension_se"],
        radius_worst: json["radius_worst"],
        texture_worst: json["texture_worst"],
        perimeter_worst: json["perimeter_worst"],
        area_worst: json["area_worst"],
        smoothness_worst: json["smoothness_worst"],
        compactness_worst: json["compactness_worst"],
        concavity_worst: json["concavity_worst"],
        concave_points_worst: json["concave_points_worst"],
        symmetry_worst: json["symmetry_worst"],
        fractal_dimension_worst: json["fractal_dimension_worst"],
        Prediction: json["Prediction"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "radius_mean": radius_mean,
        "texture_mean": texture_mean,
        "perimeter_mean": perimeter_mean,
        "area_mean": area_mean,
        "smoothness_mean": smoothness_mean,
        "compactness_mean": compactness_mean,
        "concavity_mean": concavity_mean,
        "concave_points_mean": concave_points_mean,
        "symmetry_mean": symmetry_mean,
        "fractal_dimension_mean": fractal_dimension_mean,
        "radius_se": radius_se,
        "texture_se": texture_se,
        "perimeter_se": perimeter_se,
        "area_se": area_se,
        "smoothness_se": smoothness_se,
        "compactness_se": compactness_se,
        "concavity_se": concavity_se,
        "concave_points_se": concave_points_se,
        "symmetry_se": symmetry_se,
        "fractal_dimension_se": fractal_dimension_se,
        "radius_worst": radius_worst,
        "texture_worst": texture_worst,
        "perimeter_worst": perimeter_worst,
        "area_worst": area_worst,
        "smoothness_worst": smoothness_worst,
        "compactness_worst": compactness_worst,
        "concavity_worst": concavity_worst,
        "concave_points_worst": concave_points_worst,
        "symmetry_worst": symmetry_worst,
        "fractal_dimension_worst": fractal_dimension_worst,
        "Prediction": Prediction,
      };
}
