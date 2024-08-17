import 'package:e_commers/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.getModel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => controller.homeList.value == null?Center(child: CircularProgressIndicator(),): ListView.builder(
            itemCount: controller.homeList.value!.productsList!.length,
            itemBuilder: (context, index) {
             return ListTile(
               onTap: () {
                 Get.toNamed('detail',arguments: controller.homeList.value!.productsList![index]);
               },
               leading: Image.network("${controller.homeList.value!.productsList![index].thumbnail}"),
                title: Text("${controller.homeList.value!.productsList![index].title}"),
               subtitle: Text("${controller.homeList.value!.productsList![index].price}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
