import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/models/category_model.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ItemCategory(
            category: categories[index],
          );
        },
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  ItemCategory({
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      margin: const EdgeInsets.only(left: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 75.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(
              "${category.path}",
            ),
          ),
          Text(
            "${category.title}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
