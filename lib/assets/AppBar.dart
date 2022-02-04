import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  var customAppbarName;

  CustomAppBar(var AppbarName) {
    this.customAppbarName = AppbarName;
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black87,
      title: Container(
          width: double.infinity,
          child: Text(
            this.customAppbarName,
            textAlign: TextAlign.center,
          )),
    );
  }
}
