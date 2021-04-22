import 'package:app_tia_benta/shared/base/widgets/sections/custom_search_field.dart';
import 'package:app_tia_benta/shared/breakpoints.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      // Web
      if (maxWidth >= tabletBreakpoint) {
        return panelWeb();
      }
      // Tablet
      if (maxWidth >= mobileBreakpoint) {
        return panelTablet();
      }
      // Mobile
      return panelMobile();
    });
  }

  Widget panelMobile() {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.asset(
            'images/wallpaper.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aqui vai um titulo chamativo',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'bla bla bla',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomSearchField()
                ],
              ),
            ))
      ],
    );
  }

  Widget panelTablet() {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'images/wallpaper.png',
              fit: BoxFit.cover,
            ),
          ),
          searchBox(350, 20, 20)
        ],
      ),
    );
  }

  Widget panelWeb() {
    return AspectRatio(
        aspectRatio: 3.2,
        child: Stack(
          children: [
            AspectRatio(
                aspectRatio: 3.4,
                child: Image.asset(
                  'images/wallpaper.png',
                  fit: BoxFit.cover,
                )),
            searchBox(450, 50, 50)
          ],
        ));
  }

  Widget searchBox(
      [double cardWidth,
      double left,
      double top,
      double right,
      double bottom]) {
    return Positioned(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        child: Card(
          color: Colors.black,
          elevation: 8,
          child: Container(
              width: cardWidth,
              padding: const EdgeInsets.all(22),
              child: Column(
                children: [
                  Text(
                    'Aqui vai um titulo chamativo',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'bla bla bla',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomSearchField()
                ],
              )),
        ));
  }
}
