import 'package:flutter/material.dart';

class CategoryModel {
  CategoryModel({
    this.id,
    this.title,
    this.path,
    this.color,
  });

  int? id;
  String? title;
  String? path;
  Color? color;
}

List<CategoryModel> categories = [
  CategoryModel(
    id: 1,
    title: "Desarrollo",
    path: "assets/images/development.png",
    color: const Color.fromRGBO(140, 216, 193, 1.0),
  ),
  CategoryModel(
    id: 2,
    title: "Diseño UI/UX",
    path: "assets/images/designing-tablet.png",
    color: const Color.fromRGBO(229, 215, 163, 1.0),
  ),
  CategoryModel(
    id: 3,
    title: "Marketing",
    path: "assets/images/email-marketing-goal.png",
    color: const Color.fromRGBO(137, 188, 237, 1.0),
  ),
  CategoryModel(
    id: 4,
    title: "Negocios",
    path: "assets/images/bulb.png",
    color: const Color.fromRGBO(195, 217, 158, 1.0),
  ),
  CategoryModel(
    id: 5,
    title: "Start Up",
    path: "assets/images/startup.png",
    color: const Color.fromRGBO(184, 167, 246, 1.0),
  ),
];
