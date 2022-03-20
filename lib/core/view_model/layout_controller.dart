import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../model/detailsModel.dart';
import '../../view/camera_screen.dart';
import '../../view/home_screen.dart';
import '../../view/my_plants_screen.dart';
import '../service/database/local_data_json.dart';



class LayoutController extends GetxController {

  int currentTab = 0;
  List<DetailsModel> detailsModel= [];
  List<DetailsModel> details= [];
  List<List<DetailsModel>> fullItems= [];
  List<DetailsModel> searchField= [];
  final DetailsDataServes _detailsDataServes = DetailsDataServes();

  bool _searchDone = false;
  bool get searchDone => _searchDone;
  final controllerSearch = TextEditingController();

  LayoutController(){
    getFullItems();

  }

  final List<Widget> screens = [
    const HomeScreen(),
    const MyPlantsScreen(),
    const CameraScreen(),
  ];

  void changeIndex(int index){
    currentTab = index;
    update();
  }

  closeTextSearch(){
    controllerSearch.clear();
    _searchDone = false;
    update();
  }

  search(String query){
    searchField = [];
    for(int i=0;i<fullItems.length;i++) {
          final searchItem = fullItems[i].where((filter){
            final title = filter.name.toLowerCase();
            final index = query.toLowerCase();
            return title.contains(index);
          }).toList();
          searchItem.forEach((element) {
            searchField.add(element);
          });
      }
    if(query != "") {
      _searchDone = true;
    } else {
      _searchDone = false;
      searchField=[];
    }
    print(searchField);
    update();
  }


  void getFullItems() async{
    fullItems=[];
    await _detailsDataServes.detailsDataPlant().then((value) {
      for (var element in value) {
        fullItems.add(element);
      }
    });
    update();
    // print(fullItems);
  }
  void getItems(int index) async{
    details=[];
    await _detailsDataServes.detailsData(index).then((value) {
      for (var element in value) {
        details.add(element);
      }
    });
    update();
    // print(fullItems);
  }


  void printObject(Object object) {
    // Encode your object and then decode your object to Map variable
    Map jsonMapped = json.decode(json.encode(object));

    // Using JsonEncoder for spacing
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');

    // encode it to string
    String prettyPrint = encoder.convert(jsonMapped);

    // print or debugPrint your object
    debugPrint(prettyPrint);
  }

}