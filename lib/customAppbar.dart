import 'package:flutter/material.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {
  var customAppbarName;

  appBar(var AppbarName) {
    this.customAppbarName = AppbarName;
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
