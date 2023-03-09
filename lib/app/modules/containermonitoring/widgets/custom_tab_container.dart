import 'package:eproject/app/base/base_view.dart';
import 'package:eproject/app/components/custom_appbar_navbar.dart';
import 'package:eproject/app/modules/containermonitoring/controllers/containermonitoring_controller.dart';
import 'package:eproject/app/resources/reponsize_utils.dart';
import 'package:flutter/material.dart';

class TabContainer extends BaseView<ContainermonitoringController> {
  const TabContainer({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text('Giám sát container'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: UtilsReponsive.height(context, 20)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/icon/lorry.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {},
                  label: const Text(
                    "Dashboad chuyến đi",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                    fixedSize: const Size(180, 80),
                  ),
                ),
                SizedBox(height: UtilsReponsive.width(context, 20)),
                ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/icon/container.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {},
                  label: const Text(
                    "Dashboad đơn hàng",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 3, 133, 194),
                    fixedSize: const Size(180, 80),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
