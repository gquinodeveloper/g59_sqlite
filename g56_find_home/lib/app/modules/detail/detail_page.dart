import 'package:flutter/material.dart';
import 'package:g56_find_home/app/modules/detail/detail_controller.dart';
import 'package:g56_find_home/app/modules/detail/widgets/appbar_actions.dart';
import 'package:g56_find_home/app/modules/detail/widgets/content.dart';
import 'package:g56_find_home/app/modules/detail/widgets/footer.dart';
import 'package:g56_find_home/app/modules/detail/widgets/header.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Header(path: _.houseModel.photo ?? ""),
            AppBarActions(aviable: _.houseModel.aviable ?? 0),
            Content(house: _.houseModel),
            Footer(house: _.houseModel),
          ],
        ),
      ),
    );
  }
}
