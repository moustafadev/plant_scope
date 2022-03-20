import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_scope/view/widget/custom_text.dart';

Widget sizedBoxHeight(double height) => SizedBox(
      height: height,
    );

Widget sizedBoxWidth(double width) => SizedBox(
      width: width,
    );

Widget buildLoadingSearch(context, {double height = 150}) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animation/search.json',
            height: height,
            fit: BoxFit.fill,
          ),
          CustomText(text: "Not Results", fontSize: 18)
        ],
      ),
    );

Widget textFormField({
  onFieldSubmitted,
  onTap,
  onChanged,
  validator,
  IconData suffix,
  IconData prefix,
  suffixPassword,
  @required TextEditingController controller,
  @required String label,
  @required TextInputType textInputType,
  bool obscureText = false,
}) =>
    TextFormField(
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: textInputType,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.grey.shade200,
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide(color: Colors.grey, width: 0),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide(color: Colors.grey, width: 0),
        // ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: suffixPassword,
              )
            : null,
        prefixIcon: prefix != null ? Icon(prefix) : null,
        labelText: label,
      ),
    );

Widget editTextFormField({
  @required TextEditingController controller,
  String labelText,
  String hintText,
  @required TextInputType type,
  IconData prefix,
}) =>
    TextFormField(
        controller: controller,
        keyboardType: type,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            prefixIcon: Icon(
              prefix,
            ),
            helperStyle: TextStyle(height: 100),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 0,
              ),
            ),
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[700],
            )));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false);

void navigatorTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

Widget textBottomItem({
  @required onPressed,
  @required String text,
}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
