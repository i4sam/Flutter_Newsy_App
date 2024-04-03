import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/views/about_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? titleTile;
  final bool iconed;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.iconed,
    this.titleTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      primary: true,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 31,
          ),
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF1A237E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                titleTile ?? '',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
            child: iconed ? Icon(Icons.info) : const SizedBox.shrink(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AboutView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
