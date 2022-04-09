import 'package:flutter/material.dart';
import 'package:plant_scope/shared/components/component.dart';
import '../../shared/constants/constant.dart';
import '../screen/search_screen.dart';
import 'custom_text.dart';


class CustomAppBarHeader extends StatelessWidget {
  CustomAppBarHeader({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 56,
            ),
            height: size.height * 0.3 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Plant Scope!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/photo.jpg'),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: (){
                navigatorTo(
                    context, SearchScreen());
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(child: CustomText(text: "Search", fontSize: 18,)),
                    // Expanded(
                    //   child: TextField(
                    //     onChanged: (value) {
                    //       controller.search(value);
                    //       print(controller.searchField);
                    //     },
                    //     controller: _controllerSearch,
                    //     decoration: InputDecoration(
                    //       hintText: "Search",
                    //       hintStyle: TextStyle(
                    //         color: kPrimaryColor.withOpacity(0.5),
                    //       ),
                    //       enabledBorder: InputBorder.none,
                    //       focusedBorder: InputBorder.none,
                    //     ),
                    //   ),
                    // ),
                    const Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
