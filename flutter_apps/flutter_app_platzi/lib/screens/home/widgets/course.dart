import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/models/course_model.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ItemCourse(course: courses[index]);
        },
      ),
    );
  }
}

class ItemCourse extends StatelessWidget {
  ItemCourse({
    required this.course,
  });

  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    print(course.path);
    return Container(
      width: 190.0,
      margin: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 110.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage("${course.path}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "${course.title}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              const Icon(
                Icons.person_outline_outlined,
                color: AppTheme.kPrimaryColor,
                size: 14.0,
              ),
              const SizedBox(width: 5.0),
              Text(
                "${course.people}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white54, fontSize: 10.0),
              ),
              const Spacer(),
              const Icon(
                Icons.people_alt_outlined,
                color: AppTheme.kPrimaryColor,
                size: 14.0,
              ),
              const SizedBox(width: 5.0),
              Text(
                "${course.countPeople}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white54, fontSize: 10.0),
              ),
            ],
          ),
          Container(
            width: 110.0,
            height: 20.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: course.color,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              "Nube con azure",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
