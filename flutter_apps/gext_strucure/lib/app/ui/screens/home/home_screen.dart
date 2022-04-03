import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gext_strucure/app/ui/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text("${_.address}"),
          ),
        ),
        body: Column(
          children: [
            Obx(
              () => Text(
                _.fullName.value,
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: _.houses.length,
                  itemBuilder: (context, index) {
                    final house = _.houses[index];
                    return ListTile(
                      title: Text("${house.name}"),
                      subtitle: Text("${house.description}"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
