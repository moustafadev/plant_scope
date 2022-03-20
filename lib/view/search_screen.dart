import 'package:cached_network_image/cached_network_image.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_scope/core/view_model/layout_controller.dart';
import 'package:plant_scope/model/detailsModel.dart';
import 'package:plant_scope/shared/components/component.dart';
import 'package:plant_scope/shared/constants/constant.dart';
import 'package:plant_scope/view/widget/custom_text.dart';

import 'details_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key key}) : super(key: key);

  final _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData.fallback(),
            elevation: 0.1,
            leading: InkWell(
              onTap: () {
                controller.controllerSearch.clear();
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
            ),
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: kPrimaryColor,
                  width: 3,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: controller.controllerSearch,
                        onChanged: (value) {
                          controller.search(value);
                        },
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.closeTextSearch();
                      },
                      child: Icon(
                        controller.searchDone ? Icons.clear : Icons.search,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: controller.searchField.isNotEmpty || controller.searchDone
              ? ConditionalBuilder(
                  builder: (context) =>
                      buildConditional(context, controller.searchField),
                  condition: controller.searchField.isNotEmpty,
                  fallback: (context) => Center(
                    child: buildLoadingSearch(context),
                  ),
                )
              : SizedBox.shrink()),
    );
  }

  Widget buildConditional(context, List<DetailsModel> item) {
    // print(itemSearch);
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          item.length,
          (index) => InkWell(
              onTap: () {
                navigatorTo(
                    context, DetailsScreen(details: item, index: index));
              },
              child: cartBuildItem(context, item, index)),
        ),
      ),
    );
  }

  Widget cartBuildItem(context, List<DetailsModel> item, int index) => Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                imageUrl: item[index].image,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              sizedBoxWidth(20.0),
              CustomText(
                text: item[index].name,
                fontSize: 16,
              ),
            ],
          ),
        ),
      );
}
