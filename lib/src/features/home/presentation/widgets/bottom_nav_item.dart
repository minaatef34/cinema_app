import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatefulWidget {
  final NavBarItem item;
  const BottomNavItem({super.key, required this.item});

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 58,
      width: isSameTap() ? 113 : 58,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 19),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: isSameTap() ? AppColors.mainColor : null,
        gradient: isSameTap()
            ? null
            : LinearGradient(
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withValues(alpha: .5),
                  Color(0xff333333).withValues(alpha: .5),
                ].reversed.toList(),
              ),
      ),
      child: FittedBox(
        child: isSameTap()
            ? Row(
                children: [
                  SvgPicture.asset(widget.item.icon, height: 25,width: 25,),
                  SizedBox(width: 9,),
                  Text(widget.item.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                ],
              )
            : SvgPicture.asset(widget.item.icon),
      ),
    );
  }

  bool isSameTap() => widget.item.tapIndex == widget.item.currentTap;
}

class NavBarItem {
  String icon, name;
  int tapIndex, currentTap;

  NavBarItem(this.icon, this.name, this.tapIndex, this.currentTap);
}
