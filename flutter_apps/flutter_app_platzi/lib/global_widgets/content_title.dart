import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    required this.title,
    this.more = false,
  }) : super(key: key);

  final String title;
  final bool more;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          more
              ? Text(
                  "Ver todos",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
