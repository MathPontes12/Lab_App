import 'package:flutter/material.dart';

class DivisionBar extends StatelessWidget {
  const DivisionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(                   // o expanded é necessario para que o divider ocupe todo espaço dele na row, sem ele, ocupa o minimo, nao aparecendo
        child: Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2, 
        ),
      )]);
  }
}