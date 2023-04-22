import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 20,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                customIcon(Ionicons.home_outline, const Color(0xFF59154a)),
              ],
            ),
            const Icon(FontAwesomeIcons.bagShopping, color: Colors.black54),
            const Icon(FontAwesomeIcons.wallet, color: Colors.black54),
            const Icon(FontAwesomeIcons.ellipsis),
          ],
        ),
      ),
    );
  }
  Icon customIcon(IconData icon, Color color) {
    return Icon(
      icon,
      size: 30,
      color: color,
    );
  }
}