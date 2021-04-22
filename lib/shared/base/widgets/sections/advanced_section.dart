import 'package:flutter/material.dart';

class AdvancedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvanced(String title, String subTitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvanced('+45.000 alunos', 'didatica garantida'),
          buildAdvanced('+45.000 alunos', 'didatica garantida'),
          buildAdvanced('+45.000 alunos', 'didatica garantida')
        ],
      ),
    );
  }
}
