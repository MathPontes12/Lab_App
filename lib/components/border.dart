import 'package:flutter/material.dart';

class Border_Content extends StatelessWidget {
  final Widget boxContent;
  const Border_Content({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
          padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color:Color.fromRGBO(64, 165, 55, 1),width: 3)),
                  child: boxContent,
                                   
                  );
                  
                  
  }
}