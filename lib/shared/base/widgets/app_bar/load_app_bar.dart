import 'package:app_tia_benta/shared/base/widgets/app_bar/mobile_app_bar.dart';
import 'package:app_tia_benta/shared/base/widgets/app_bar/web_app_bar.dart';
import 'package:app_tia_benta/shared/breakpoints.dart';
import 'package:flutter/material.dart';

class LoadAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text titleBar;
  final BoxConstraints constraints;
  const LoadAppBar({Key key, this.titleBar, this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return constraints.maxWidth < mobileBreakpoint
        ? MobileAppBar(titleBar)
        : WebAppBar(titleBar);
  }

  @override
  Size get preferredSize => constraints.maxWidth < mobileBreakpoint
      ? new Size(double.infinity, 56)
      : new Size(double.infinity, 72);
}
