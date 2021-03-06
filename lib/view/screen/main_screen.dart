import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/view_model/layout_controller.dart';
import '../../shared/constants/constant.dart';
import 'home_screen.dart';


class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController searchController = TextEditingController();


  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {

    final PageStorageBucket bucket = PageStorageBucket();

    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: ((controller) => Scaffold(
            body: SingleChildScrollView(
              child: PageStorage(
                bucket: bucket,
                child: HomeScreen(),
              ),
            ),
            // floatingActionButton: SizedBox(
            //   height: 80.0,
            //   width: 80.0,
            //   child: FittedBox(
            //     child: FloatingActionButton(
            //       backgroundColor: kPrimaryColor,
            //       child: const Padding(
            //           padding: EdgeInsets.all(12.0),
            //           child: Image(
            //             image: AssetImage(kImageCamera1),
            //           )),
            //       onPressed: () {
            //         controller.changeIndex(2);
            //       },
            //     ),
            //   ),
            // ),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerDocked,
            // bottomNavigationBar: BottomAppBar(
            //   shape: const CircularNotchedRectangle(),
            //   notchMargin: 10,
            //   child: SizedBox(
            //     height: 60,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         MaterialButton(
            //           minWidth: 60,
            //           onPressed: () {
            //             controller.changeIndex(0);
            //           },
            //           child: Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: controller.currentTab == 0
            //                 ? const Image(
            //                     image: AssetImage(
            //                       kImageLeaf,
            //                     ),
            //                   )
            //                 : const Image(
            //                     image: AssetImage(kImageLeaf1),
            //                   ),
            //           ),
            //         ),
            //         MaterialButton(
            //             minWidth: 60,
            //             onPressed: () {
            //               controller.changeIndex(1);
            //             },
            //             child: Padding(
            //               padding: const EdgeInsets.all(10.0),
            //               child: controller.currentTab == 1
            //                   ? const Image(
            //                       image: AssetImage(kImagePlants1),
            //                     )
            //                   : const Image(
            //                       image: AssetImage(kImagePlants),
            //                     ),
            //             ))
            //       ],
            //     ),
            //   ),
            // ),
          )),
    );
  }

}



