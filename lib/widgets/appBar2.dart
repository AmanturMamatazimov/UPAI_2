import 'package:flutter/material.dart';

class AllAppBar2 extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Color(0xFF225196), //change your color here
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Color(0xFF225196),
          ),
        ),
      ],
    );
  }
}
