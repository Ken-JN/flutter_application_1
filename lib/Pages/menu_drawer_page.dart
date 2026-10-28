import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/menudrawer_controller.dart';
import 'package:get/get.dart';


//https://www.geeksforgeeks.org/flutter/drawer-widget-in-flutter/

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MenudrawerController controller = Get.put(MenudrawerController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 100),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                controller.changePage(0);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {
                controller.changePage(1);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                controller.changePage(2);
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
