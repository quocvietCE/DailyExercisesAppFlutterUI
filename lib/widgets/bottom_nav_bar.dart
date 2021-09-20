import 'package:daily_exercises_app_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "Today",
            onPress: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercise",
            isActive: true,
            onPress: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Settings",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    this.isActive = false,
    required this.onPress,
  }) : super(key: key);
  final String svgSrc;
  final String title;
  final bool isActive;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}
