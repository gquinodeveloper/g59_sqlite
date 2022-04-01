import 'package:flutter/material.dart';

class CourseModel {
  CourseModel({
    this.path,
    this.title,
    this.people,
    this.countPeople,
    this.subText,
    this.color,
  });
  String? path;
  String? title;
  String? people;
  String? countPeople;
  String? subText;
  Color? color;
}

List<CourseModel> courses = [
  CourseModel(
    path: "assets/images/cloud.png",
    title: "Aprende sobre la nube",
    people: "Hector Vega",
    countPeople: "2k Almunos",
    subText: "Nube con azure",
    color: const Color.fromRGBO(22, 52, 92, 1.0),
  ),
  CourseModel(
    path: "assets/images/Freddy.png",
    title: "Bienvenido a Platzi",
    people: "Freddy Vega",
    countPeople: "2k Almunos",
    subText: "Introducción",
    color: const Color.fromRGBO(24, 41, 52, 1.0),
  ),
  CourseModel(
    path: "assets/images/English.png",
    title: "English Academy",
    people: "Gustavo Quino",
    countPeople: "2k Almunos",
    subText: "Básico intermedio",
    color: const Color.fromRGBO(22, 52, 92, 1.0),
  ),
];
