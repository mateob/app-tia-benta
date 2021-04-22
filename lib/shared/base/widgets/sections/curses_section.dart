import 'package:app_tia_benta/shared/breakpoints.dart';
import 'package:flutter/material.dart';

class CursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, crossAxisSpacing: 16, mainAxisSpacing: 16),
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red[100],
          );
        },
      );
    });
  }
}
